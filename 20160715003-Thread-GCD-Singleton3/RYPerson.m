//
//  RYPerson.m
//  20160715003-Thread-GCD-Singleton3
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "RYPerson.h"

@interface RYPerson () <NSCopying>

@end

@implementation RYPerson

static id _instance;

+ (instancetype)sharedPerson {
    return [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t dispatchOnceToken;
    
    dispatch_once(&dispatchOnceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

@end
