//
//  RYPerson.h
//  20160715003-Thread-GCD-Singleton3
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RYPerson : NSObject

@property (nonatomic, copy) NSString *name;

+ (instancetype)sharedPerson;

@end
