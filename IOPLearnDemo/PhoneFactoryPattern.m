//
//  PhoneFactoryPattern.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "PhoneFactoryPattern.h"
#import "PhoneSender.h"

@implementation PhoneFactoryPattern
+ (id<SenderMessageInterface>)sender{
    return [[PhoneSender alloc] init];
}
@end
