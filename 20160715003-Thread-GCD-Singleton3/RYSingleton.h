//
//  RYSingleton.h
//  20160715003-Thread-GCD-Singleton3
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#ifndef RYSingleton_h
#define RYSingleton_h

#define RYSingletonH(name) + (instancetype)shared##name;

#define RYSingletonM(name)\
\
static id _instance;\
\
+ (instancetype)shared##name {\
    return [[self alloc] init];\
}\
\
+ (instancetype)allocWithZone:(struct _NSZone *)zone {\
    static dispatch_once_t dispatchOnceToken;\
    \
    dispatch_once(&dispatchOnceToken, ^{\
        _instance = [super allocWithZone:zone];\
    });\
    \
    return _instance;\
}\
\
- (id)copyWithZone:(NSZone *)zone {\
    return _instance;\
}

#endif /* RYSingleton_h */
