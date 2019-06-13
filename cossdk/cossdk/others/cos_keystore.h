
#ifndef _COS_KEYSTORE_H_
#define _COS_KEYSTORE_H_

#include <stdint.h>
#include <stdio.h>
#include <list>
#include <string>
using namespace std;

#pragma pack(1)
struct cos_key_data {
    char account[256];
    char wif_private_key[256];
};
typedef struct cos_key_data cos_key_data;
#pragma pack()


class CosKeyStore {
protected:
    CosKeyStore();
    virtual ~CosKeyStore();
public:
    static CosKeyStore* instance() {
        static CosKeyStore _self;
        return &_self;
    }
    
public:
    /**
     @brief 检测必要属性是否无效
     @return 无效返回非0, 有效返回0
     **/
    int32_t invalid();
    
    /**
     @brief 打开文件
     @param fname 文件路径
     @return 成功返回0, 否则返回非0
     **/
    int32_t open(const char* fname);
    
    /**
     @brief 保存文件
     @return 成功返回0, 否则返回非0
     **/
    int32_t save(const char* fname);
    
    /**
     @brief 关闭文件
     **/
    void close();
    
private:
    static int32_t encrypt(const char* input, int32_t inlen, char* output, int32_t outlen, uint32_t passwd);
    
    /**
     @brief 解码
     @param input 输入数据
     @param inlen 输入长度
     @param output 输出数据
     @param outlen 输出长度
     @param passwd 密码
     @return 成功返回0, 否则返回非0
     **/
    static int32_t decrypt(const char* input, int32_t inlen, char* output, int32_t outlen, uint32_t passwd);
    
public:
    /**
     @brief 获取对应账户的密钥
     @param account 输入账户
     @param passwd 输入密码
     @param key 输出密钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t get_key(const char* account, const char* passwd, char* key);
    
    /**
     @brief 设置对应账户的密钥
     @param account 输入账户
     @param passwd 输入密码
     @param key 输入密钥
     @return 成功返回0, 否则返回非0
     **/
    int32_t set_key(const char* account, const char* passwd, const char* key);
    
    /**
     @brief 删除对应账户的密钥
     @param account 输入账户
     @return 成功返回0, 否则返回非0
     **/
    int32_t del_key(const char* account);
    
    /**
     @brief 获取账户列表
     **/
    list<string> get_account_list();
    
protected:
    //密钥表
    list<cos_key_data*> _keys;
};

#endif //_COS_KEYSTORE_H_

