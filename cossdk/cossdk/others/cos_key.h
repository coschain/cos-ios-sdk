
#ifndef _COS_KEY_H_
#define _COS_KEY_H_

#include <stdint.h>
#include <stdio.h>

#include "secp256k1.h"
#include "secp256k1_recovery.h"
#include "secp256k1_preallocated.h"

//私钥长度
#define COS_PRIVATE_KEY_SIZE 32
//公钥长度
#define COS_PUBLIC_KEY_SIZE (64+1)

class CosKey {
public:
    CosKey();
    virtual ~CosKey();
    
public:
    /**
     @brief 重制内容
     **/
    void reset();
    
    /**
     @brief 随机填充一个私钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t gen_random_private_key();
    
    /**
     @brief 创建上下文并验证私钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t create_secp256k1_context();
    
    /**
     @brief 根据私钥生成公钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t create_public_key();
    
    /**
     @brief 序列化公钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t serialize_public_key();
    
    /**
     @brief 反序列化公钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t parse_public_key();
    
public:
    /**
     @brief 获取数据的sha256哈希
     @param buffer 数据内容
     @param size 数据长度
     @param hash256 输出256位哈希
     @return 成功返回0, 否则返回非0
     **/
    static int32_t get_data_sha256(const char* buffer, int32_t size, char* hash256);
    
    /**
     @brief 使用私钥签名
     @param hash256 签名内容
     @param sign64 输出签名
     @return 成功返回0, 否则返回非0
     **/
    int32_t sign_by_private_key(const char* hash256, char* sign64);
    
    /**
     @brief 使用公钥验证签名
     @param hash256 签名内容
     @param sign64 签名信息
     @return 成功返回0, 否则返回非0
     **/
    int32_t verify_by_public_key(const char* hash256, const char* sign64);
    
    /**
     @brief 序列化签名摘要
     **/
    int32_t get_ecdsa_signature_serialize_der(const char* sign64);
    
protected:
    //上下文
    secp256k1_context* _context;
    //公钥信息
    secp256k1_pubkey _pubkey;
    
protected:
    //私钥内容
    uint8_t _private_key[COS_PRIVATE_KEY_SIZE];
    //公钥内容
    uint8_t _public_key[COS_PUBLIC_KEY_SIZE];
    //公钥长度
    size_t _public_size;

};

#endif //_COS_KEY_H_
