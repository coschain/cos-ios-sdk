
#include <string.h>
#include "cos_crc32.h"
#include "cos_keystore.h"

CosKeyStore::CosKeyStore() {
    
}

CosKeyStore::~CosKeyStore() {
    close();
}

int32_t CosKeyStore::invalid() {
    if( _keys.empty() ) {
        return -1;
    }
    return 0;
}

int32_t CosKeyStore::open(const char* fname) {
    if( !fname || !*fname ) {
        return -1;
    }
    if( !invalid() ) {
        return -2;
    }
    
    //打开密钥文件
    FILE* fp = ::fopen(fname, "rb");
    if( !fp ) {
        return -20;
    }
    
    //获取文件大小
    fseek(fp, 0, SEEK_END);
    size_t fsize = ftell(fp);
    rewind(fp);
    
    //检测大小是否合法
    if( fsize <= 0 ) {
        return -21;
    }
    if( fsize % sizeof(cos_key_data) ) {
        fclose(fp);
        return -22;
    }
    
    //读取内容
    char* fcontent = new char[fsize];
    if( !fcontent ) {
        fclose(fp);
        return -23;
    }
    
    size_t result = fread( fcontent, 1, fsize, fp );
    if( result != fsize ) {
        fclose(fp);
        return -24;
    }
    
    fclose(fp);
    
    //载入内容
    cos_key_data* headers = (cos_key_data*)fcontent;
    size_t count = fsize/sizeof(cos_key_data);
    for( int i = 0; i < count; ++i ) {
        cos_key_data* hdr = new cos_key_data;
        if( !hdr ) {
            delete [] fcontent;
            close();
            return -30;
        }
        memcpy( hdr, &headers[i], sizeof(cos_key_data) );
        _keys.push_back(hdr);
    }
    
    return 0;
}

int32_t CosKeyStore::save(const char* fname) {
    if( !fname || !*fname ) {
        return -1;
    }
    if( invalid() ) {
        return -2;
    }
    
    FILE* fp = fopen(fname, "wb+");
    if( !fp ) {
        return -3;
    }
    list<cos_key_data*>::iterator it = _keys.begin();
    for( ; it != _keys.end(); it++ ) {
        cos_key_data* p = *it;
        size_t result = fwrite( p, 1, sizeof(cos_key_data), fp );
        if( result != sizeof(cos_key_data) ) {
            fclose(fp);
            return -10;
        }
    }
    fclose(fp);
    return 0;
}

void CosKeyStore::close() {
    while( !_keys.empty() ) {
        cos_key_data* hdr = _keys.front();
        _keys.pop_front();
        delete hdr;
    }
    return;
}

int32_t CosKeyStore::encrypt(const char* input, int32_t inlen, char* output, int32_t outlen, uint32_t passwd) {
    if( !input || inlen < sizeof(uint32_t) ) {
        return -1;
    }
    if( !output || outlen < inlen ) {
        return -2;
    }
    
    int32_t count = inlen / sizeof(uint32_t);
    const uint32_t* src = (const uint32_t*)input;
    uint32_t* dst = (uint32_t*)output;
    for( int32_t i = 0; i < count; i++ ) {
        *dst++ = (*src++) ^ i ^ passwd;
    }
    return 0;
}

int32_t CosKeyStore::decrypt(const char* input, int32_t inlen, char* output, int32_t outlen, uint32_t passwd) {
    if( !input || inlen < sizeof(uint32_t) ) {
        return -1;
    }
    if( !output || outlen < inlen ) {
        return -2;
    }
    
    int32_t count = inlen / sizeof(uint32_t);
    const uint32_t* src = (const uint32_t*)input;
    uint32_t* dst = (uint32_t*)output;
    for( int32_t i = 0; i < count; i++ ) {
        *dst++ = (*src++) ^ i ^ passwd;
    }
    return 0;
}

int32_t CosKeyStore::get_key(const char* account, const char* passwd, char* key) {
    if( !account || !*account ) {
        return -1;
    }
    if( !passwd || !*passwd ) {
        return -2;
    }
    if( !key ) {
        return -3;
    }
    if( invalid() ) {
        return -4;
    }
    uint32_t pwd32 = COSCRC32_DATA(passwd, strlen(passwd));
    list<cos_key_data*>::iterator it = _keys.begin();
    for( ; it != _keys.end(); it++ ) {
        cos_key_data* p = *it;
        if( strcasecmp(account, p->account) ) {
            continue;
        }
        decrypt( p->wif_private_key, sizeof(p->wif_private_key), key, sizeof(p->wif_private_key), pwd32 );
        return 0;
    }
    return -100;
}

int32_t CosKeyStore::set_key(const char* account, const char* passwd, const char* key) {
    if( !account || !*account ) {
        return -1;
    }
    if( !passwd || !*passwd ) {
        return -2;
    }
    if( !key ) {
        return -3;
    }
    
    cos_key_data data;
    memset( &data, 0, sizeof(cos_key_data) );
    strncpy(data.account, account, sizeof(data.account)-1);
    strncpy(data.wif_private_key, key, sizeof(data.wif_private_key)-1);
    
    cos_key_data output;
    uint32_t pwd32 = COSCRC32_DATA(passwd, strlen(passwd));
    int32_t result = encrypt(data.wif_private_key, sizeof(data.wif_private_key), output.wif_private_key, sizeof(output.wif_private_key), pwd32);
    if( result ) {
        return -10;
    }
    return 0;
}

int32_t CosKeyStore::del_key(const char* account) {
    if( !account || !*account ) {
        return -1;
    }
    if( invalid() ) {
        return -2;
    }
    
    list<cos_key_data*>::iterator it = _keys.begin();
    for( ; it != _keys.end(); it++ ) {
        cos_key_data* p = *it;
        if( strcmp(account, p->account) ) {
            continue;
        }
        _keys.erase(it);
        return 0;
    }
    
    return -101;
}

list<string> CosKeyStore::get_account_list() {
    list<string> table;
    if( invalid() ) {
        return table;
    }
    list<cos_key_data*>::iterator it = _keys.begin();
    for( ; it != _keys.end(); it++ ) {
        cos_key_data* p = *it;
        table.push_back(p->account);
    }
    return table;
}

