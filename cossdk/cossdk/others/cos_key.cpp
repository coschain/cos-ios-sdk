

#include <stdlib.h>
#include <CommonCrypto/CommonDigest.h>
#include "cos_key.h"

CosKey::CosKey() {
    _context = NULL;
    memset( &_pubkey, 0, sizeof(_pubkey) );
    memset( _private_key, 0, sizeof(_private_key) );
    
    _public_size = 0;
    memset( _public_key, 0, sizeof(_public_key) );
}

CosKey::~CosKey() {
    reset();
}

void CosKey::reset() {
    if( _context ) {
        secp256k1_context_destroy(_context);
        _context = NULL;
    }
    memset( &_pubkey, 0, sizeof(_pubkey) );
    memset( _private_key, 0, sizeof(_private_key) );
    
    _public_size = 0;
    memset( _public_key, 0, sizeof(_public_key) );
    return;
}

int32_t CosKey::gen_random_private_key() {
    uint8_t* p = _private_key;
    for( int32_t i = 0; i < COS_PRIVATE_KEY_SIZE; i++ ) {
        *p++ = (rand() % 255) + 1;
    }
    return 0;
}

int32_t CosKey::create_secp256k1_context() {
    if( _context ) {
        return -1;
    }
    
    //创建上下文(签名和验证)
    _context = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    if( !_context ) {
        return -10;
    }
    
    //随机化
    int result = secp256k1_context_randomize( _context, _private_key );
    if( 1 != result ) {
        return -11;
    }
    
    //验证私钥是否有效
    result = secp256k1_ec_seckey_verify( _context, _private_key );
    if( 1 != result ) {
        return -12;
    }
    return 0;
}

int32_t CosKey::create_public_key() {
    if( !_context ) {
        return -1;
    }
    
    //根据私钥生成公钥
    memset( &_pubkey, 0, sizeof(_pubkey) );
    int result = secp256k1_ec_pubkey_create( _context, &_pubkey, _private_key );
    if( 1 != result ) {
        return -10;
    }
    return 0;
}

int32_t CosKey::serialize_public_key() {
    if( !_context ) {
        return -1;
    }
    
    //序列化公钥
    _public_size = sizeof(_public_key);
    int result = secp256k1_ec_pubkey_serialize( _context, (uint8_t*)_public_key, &_public_size, &_pubkey, SECP256K1_EC_COMPRESSED);
    if( 1 != result ) {
        return -11;
    }
    
    return 0;
}

int32_t CosKey::parse_public_key() {
    if( !_context ) {
        return -1;
    }
    if( _public_size <= 0 ) {
        return -2;
    }
    
    //序列化公钥
    int result = secp256k1_ec_pubkey_parse( _context, &_pubkey, _public_key, _public_size );
    if( 1 != result ) {
        return -10;
    }
    return 0;
}

int32_t CosKey::get_data_sha256(const char* buffer, int32_t size, char* hash256) {
    if( !buffer ) {
        return -1;
    }
    if( size <= 0 ) {
        return -2;
    }
    if( !hash256 ) {
        return -3;
    }
    uint8_t digest[CC_SHA256_DIGEST_LENGTH] = {0};
    CC_SHA256(buffer, (CC_LONG)size, digest);
    memcpy( hash256, digest, CC_SHA256_DIGEST_LENGTH );
    return 0;
}

int32_t CosKey::sign_by_private_key(const char* hash256, char* sign64) {
    if( !hash256 ) {
        return -1;
    }
    if( !sign64 ) {
        return -2;
    }
    if( !_context ) {
        return -3;
    }
    
    secp256k1_ecdsa_signature sign;
    memset( &sign, 0, sizeof(sign) );
    int result = secp256k1_ecdsa_sign(_context, &sign, (const uint8_t*)hash256, _private_key, NULL, NULL);
    if( 1 != result ) {
        return -10;
    }
    
    //保存二进制签名信息
    memcpy( sign64, sign.data, sizeof(sign.data) );
    return 0;
}

int32_t CosKey::verify_by_public_key(const char* hash256, const char* sign64) {
    if( !hash256 ) {
        return -1;
    }
    if( !sign64 ) {
        return -2;
    }
    if( !_context ) {
        return -3;
    }
    
    //保存签名信息
    secp256k1_ecdsa_signature sign;
    memcpy( sign.data, sign64, sizeof(sign.data) );
    
    //使用公钥验证签名
    int result = secp256k1_ecdsa_verify(_context, &sign, (const uint8_t*)hash256, &_pubkey );
    if( 1 != result ) {
        return -10;
    }

    return 0;
}

int32_t CosKey::get_ecdsa_signature_serialize_der( const char* sign64 ) {
    if( !sign64 ) {
        return -1;
    }
    if( !_context ) {
        return -2;
    }
    
    //保存签名信息
    secp256k1_ecdsa_signature sign;
    memcpy( sign.data, sign64, sizeof(sign.data) );
    
    uint8_t output[1024] = "";
    size_t outlen = sizeof(output);
    int result = secp256k1_ecdsa_signature_serialize_der( _context, output, &outlen, &sign );
    if( 1 != result ) {
        return -10;
    }
    return 0;
}
