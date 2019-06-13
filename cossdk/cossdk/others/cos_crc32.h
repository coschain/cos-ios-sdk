
#ifndef _COS_CRC32_H_
#define _COS_CRC32_H_

/**
  @brief	CRC32校验
  @date		2018-01-25
  **/


#include <stdint.h>

#if !defined(COSCRC32_FILE)
#define COSCRC32_FILE(fn) \
	COSCRC32::calc_file(fn)
#endif //COSCRC32_FILE

#if !defined(COSCRC32_DATA)
#define COSCRC32_DATA(data, size) \
	COSCRC32::calc_data(data, size)
#endif //COSCRC32_DATA

class COSCRC32 {
private:
	COSCRC32() {
	}
	~COSCRC32() {
	}
public:
	static void		create_table();
	static uint32_t	calc_data(const char* buffer, int64_t size, uint32_t default_crc = 0);
	static uint32_t	calc_file(const char* filename);
protected:
	static bool		_state;
	static uint32_t	_table[256];
	static uint8_t	_buffer[16384];
};


#endif //_COS_CRC32_H_


