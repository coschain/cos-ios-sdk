//
//  ec.c
//  COSSDK
//
//  Created by 戴硕 on 2019/7/19.
//  Copyright © 2019 Contentos. All rights reserved.
//

#include "ec.h"
#include <openssl_grpc/err.h>
#include <openssl_grpc/bn.h>

EC_KEY *EC_KEY_new_custom(const void *params, int param_size) {
    BIGNUM *p = NULL, *a = NULL, *b = NULL, *n = NULL, *h = NULL, *x = NULL, *y = NULL;
    EC_POINT *g = NULL;
    EC_GROUP *grp = NULL;
    const uint8_t *para = (const uint8_t *)params;
    
    EC_KEY *ret = EC_KEY_new();
    if (ret == NULL) {
        OPENSSL_PUT_ERROR(EC, ERR_R_MALLOC_FAILURE);
        goto failed;
    }
    
    p = BN_bin2bn(para + ECPARAM_P * param_size, param_size, NULL);
    a = BN_bin2bn(para + ECPARAM_A * param_size, param_size, NULL);
    b = BN_bin2bn(para + ECPARAM_B * param_size, param_size, NULL);
    x = BN_bin2bn(para + ECPARAM_X * param_size, param_size, NULL);
    y = BN_bin2bn(para + ECPARAM_Y * param_size, param_size, NULL);
    n = BN_bin2bn(para + ECPARAM_N * param_size, param_size, NULL);
    h = BN_bin2bn(para + ECPARAM_H * param_size, param_size, NULL);
    if (!p || !a || !b || !x || !y || !n || !h) {
        goto failed;
    }
    
    grp = EC_GROUP_new_curve_GFp(p, a, b, NULL);
    if (!grp) {
        goto failed;
    }
    g = EC_POINT_new(grp);
    if (!g) {
        goto failed;
    }
    if (!EC_POINT_set_affine_coordinates_GFp(grp, g, x, y, NULL)) {
        goto failed;
    }
    if (!EC_GROUP_set_generator(grp, g, n, h)) {
        goto failed;
    }
    if (!EC_KEY_set_group(ret, grp)) {
        goto failed;
    }
    goto succ;

failed:
    EC_KEY_free(ret);
    ret = NULL;
    
succ:
    EC_POINT_free(g);
    EC_GROUP_free(grp);
    BN_free(p);
    BN_free(a);
    BN_free(b);
    BN_free(x);
    BN_free(y);
    BN_free(n);
    BN_free(h);
    return ret;
}


int ECDSA_rec_sign(const uint8_t *digest, size_t digest_len, const EC_KEY *eckey, ECDSA_SIG *sig, BIGNUM *rec_id) {
    int ret = 0;
    BIGNUM *r = NULL, *s = NULL, *z = NULL, *k = NULL, *k_inv = NULL, *x = NULL, *y = NULL, *rec = NULL, *half_order = NULL;
    EC_POINT *q = NULL;
    const EC_GROUP *grp = NULL;
    const BIGNUM *order = NULL, *d = NULL;
    
    // allocate bignums
    r = BN_new();
    s = BN_new();
    k = BN_new();
    k_inv = BN_new();
    x = BN_new();
    y = BN_new();
    rec = BN_new();
    half_order = BN_new();
    
    // d = private key
    if (!(d = EC_KEY_get0_private_key(eckey))) {
        goto failed;
    }
    // get group from key
    if (!(grp = EC_KEY_get0_group(eckey))) {
        goto failed;
    }
    // order = curve order
    if (!(order = EC_GROUP_get0_order(grp))) {
        goto failed;
    }
    // half_order = order/2, used by BIP-0062 compliance check
    if (!BN_rshift1(half_order, order)) {
        goto failed;
    }
    // z = digest as bignum
    if (!(z = BN_bin2bn(digest, digest_len, NULL))) {
        goto failed;
    } else {
        // z must be no longer than curve order.
        // see https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm#Signature_generation_algorithm
        int excess = BN_num_bits(z) - BN_num_bits(order);
        if (excess > 0) {
            if (!BN_rshift(z, z, excess)) {
                goto failed;
            }
        }
    }
    // allocate point q, used by signing
    if (!(q = EC_POINT_new(grp))) {
        goto failed;
    }
    // a valid signature might need several tries
    while (1) {
        // k = secure random from [1, order]
        if (!BN_rand_range_ex(k, 1, order)) {
            goto failed;
        }
        // k_inv = k^-1
        if (!(k_inv = BN_mod_inverse(k_inv, k, order, NULL))) {
            goto failed;
        }
        // q(x, y) = kG
        if (!EC_POINT_mul(grp, q, k, NULL, NULL, NULL)) {
            goto failed;
        }
        if (!EC_POINT_get_affine_coordinates_GFp(grp, q, x, y, NULL)) {
            goto failed;
        }
        // r = x mod order, rec = x / order
        if (!BN_div(rec, r, x, order, NULL)) {
            goto failed;
        }
        // retry when r == 0
        if (BN_is_zero(r)) {
            continue;
        }
        // rec = (rec << 1) + (y & 1)
        if (!BN_lshift1(rec, rec) || !BN_add_word(rec, BN_is_odd(y))) {
            goto failed;
        }
        // s = (k^-1)(z + rd) mod order
        if (!BN_mul(s, r, d, NULL) || !BN_add(s, s, z) || !BN_mod_mul(s, s, k_inv, order, NULL)) {
            goto failed;
        }
        // retry when s == 0
        if (BN_is_zero(s)) {
            continue;
        }
        // BIP-0062 compliance check
        // see https://github.com/bitcoin/bips/blob/master/bip-0062.mediawiki#low-s-values-in-signatures
        // necessary for resistance to ECDSA signature malleability attack
        if (BN_cmp(s, half_order) > 0) {
            // s = -s mod order = order - s
            BIGNUM *old_s = BN_dup(s);
            BN_sub(s, order, old_s);
            BN_free(old_s);
            
            // flip bit0 of rec
            if (BN_is_bit_set(rec, 0)) {
                BN_clear_bit(rec, 0);
            } else {
                BN_set_bit(rec, 0);
            }
        }
        // signature (r, s, rec) generated
        break;
    }
    BN_copy(rec_id, rec);
    ECDSA_SIG_set0(sig, BN_dup(r), BN_dup(s));
    ret = 1;

failed:
    BN_free(r);
    BN_free(s);
    BN_free(z);
    BN_free(k);
    BN_free(k_inv);
    BN_free(x);
    BN_free(y);
    BN_free(rec);
    BN_free(half_order);
    EC_POINT_free(q);

    return ret;
}
