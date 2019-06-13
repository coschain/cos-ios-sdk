
#ifndef _COS_B58_H_
#define _COS_B58_H_

#include <stdint.h>
#include <stddef.h>

/**
 @brief 编码
 @param bin 输入数据
 @param binlen 输入长度
 @param b58 输出数据
 @param b58len 输出长度
 **/
extern void e58( const uint8_t * bin, size_t binlen, char ** b58, size_t * b58len );

/**
 @brief 解码
 @param bin 输入数据
 @param binlen 输入长度
 @param b58 输出数据
 @param b58len 输出长度
 **/
extern void d58( const char * b58, size_t b58len, uint8_t ** bin, size_t * binlen );

/**
 @brief 检测
 @param b58 输入数据
 @param b58len 输入长度
 **/
extern bool c58( const char * b58, size_t b58len );

#endif //_COS_B58_H_
