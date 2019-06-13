
#include <stdio.h>
#include <unistd.h>
#include "cos_crc32.h"


bool	COSCRC32::_state = false;
uint32_t	COSCRC32::_table[256] = { 0 };
uint8_t	COSCRC32::_buffer[16384] = { 0 };

void COSCRC32::create_table() {
	if( _state ) {
		return;
	}
	for(int i = 0; i < 256; i++) {
		unsigned int crc = i;
		for(int j = 0; j < 8; j++) {
			if(crc & 1) {
				crc = (crc >> 1) ^ 0xEDB88320;
			}
			else {
				crc >>= 1;
			}
		}
		_table[i] = crc;
	}
	_state = true;
	return;
}


uint32_t COSCRC32::calc_data(const char* buffer, int64_t size, uint32_t default_crc) {
	if( !buffer ) {
		return 0;
	}
	if( size <= 0 ) {
		return 0;
	}
	create_table();
	uint32_t crc32 = default_crc ^ 0xFFFFFFFF;
	for( int64_t i = 0; i < size; i++ ) {
		//uint32 t = (crc32 ^ buffer[i]) & 0xFF;
		//crc32 = ((crc32 >> 8) & 0xFFFFFF) ^ _table[t];
		uint8_t index = (crc32 & 0xFF) ^ (unsigned char)buffer[i];
		crc32 = (crc32 >> 8) ^ _table[index];
	}
	return crc32 ^ 0xFFFFFFFF;
}



uint32_t	COSCRC32::calc_file(const char* filename) {
	if( !filename || !*filename ) {
		return 0;
	}

	FILE* fp = fopen( filename, "rb" );
	if( !fp ) {
		return 0;
	}
	if( fseek(fp, 0L, SEEK_END) ) {
		fclose(fp);
		return 0;
	}

	int64_t filesize = (int64_t)ftell(fp);
	if( filesize <= 0 ) {
		fclose(fp);
		return 0;
	}

	if( fseek(fp, 0L, SEEK_SET) ) {
		fclose(fp);
		return 0;
	}

	uint32_t crc32 = 0;
	int64_t completed_size = 0;
	while(completed_size < filesize) {
		int64_t result = (int64_t)::fread( _buffer, 1, sizeof(_buffer), fp );
		if( result <= 0 ) {
			if( feof(fp) ) {
				break;
			}
			fclose(fp);
			return 0;
		}
		completed_size += result;
		crc32 = calc_data((const char*)_buffer, result, crc32);
	}
	fclose(fp);
	return crc32;
}


