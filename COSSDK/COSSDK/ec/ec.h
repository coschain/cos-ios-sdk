//
//  ec.h
//  COSSDK
//
//  Created by 戴硕 on 2019/7/19.
//  Copyright © 2019 Contentos. All rights reserved.
//

#ifndef ec_h
#define ec_h

#include <openssl_grpc/ecdsa.h>

// elliptic curve parameters
enum {
    ECPARAM_P = 0,    // prime number p defines Fp
    ECPARAM_A,        // a part of EC equation: y^2 = x^3 + ax + b
    ECPARAM_B,        // b part of EC equation: y^2 = x^3 + ax + b
    ECPARAM_X,        // x of generator point
    ECPARAM_Y,        // y of generator point
    ECPARAM_N,        // order
    ECPARAM_H,        // cofactor
    
    // count of parameters
    ECPARAM_COUNT
};

#if defined(__cplusplus)
extern "C" {
#endif
    
    EC_KEY *EC_KEY_new_custom(const void *params, int param_size);
    
    int ECDSA_rec_sign(const uint8_t *digest, size_t digest_len, const EC_KEY *eckey, ECDSA_SIG *sig, BIGNUM *rec_id);
    
#if defined(__cplusplus)
}
#endif

#endif /* ec_h */
