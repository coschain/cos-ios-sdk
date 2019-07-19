//
//  secp256k1.h
//  COSSDK
//
//  Created by 戴硕 on 2019/7/19.
//  Copyright © 2019 Contentos. All rights reserved.
//

#ifndef secp256k1_h
#define secp256k1_h

#include "ec.h"

#if defined(__cplusplus)
extern "C" {
#endif
    
    EC_KEY *EC_KEY_new_s256k1(void);

#if defined(__cplusplus)
}
#endif

#endif /* secp256k1_h */
