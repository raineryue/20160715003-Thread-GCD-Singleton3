//
//  ViewController.m
//  20160715003-Thread-GCD-Singleton3
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ViewController.h"
#import "RYPerson.h"
#import "RYCar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#warning 使用类定义的单例模式实现
    RYPerson *person1 = [RYPerson sharedPerson];
    RYPerson *person2 = [RYPerson sharedPerson];
    RYPerson *person3 = [RYPerson sharedPerson];
    
    NSLog(@"%@ %@ %@", person1, person2, person3);

#warning 使用宏定义的单例模式实现
    RYCar *car1 = [RYCar sharedCar];
    RYCar *car2 = [RYCar sharedCar];
    RYCar *car3 = [RYCar sharedCar];
    
    NSLog(@"%@ %@ %@", car1, car2, car3);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
