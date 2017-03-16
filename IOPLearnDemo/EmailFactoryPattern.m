//
//  EmailFactoryPattern.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "EmailFactoryPattern.h"
#import "EmailSender.h"

@implementation EmailFactoryPattern
+ (id<SenderMessageInterface>)sender{
    return [[EmailSender alloc] init];
}
@end
