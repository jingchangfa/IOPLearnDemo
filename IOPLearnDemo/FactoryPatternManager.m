//
//  FactoryPatternManager.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "FactoryPatternManager.h"
#import "EmailSender.h"
#import "PhoneSender.h"
@implementation FactoryPatternManager
// 普通工厂模式
+ (id<SenderMessageInterface>)senderWithType:(Sender_Type)type{
    NSArray *senderArray = @[@"EmailSender",@"PhoneSender"];
    if (type>senderArray.count-1) {
        NSLog(@"Sender_Type_Unknow");
        return nil;
    }
    return [[NSClassFromString(senderArray[type]) alloc] init];
}

// 多个工厂方法模式
+ (id<SenderMessageInterface>)senderEmail{
    return [[EmailSender alloc] init];
}
+ (id<SenderMessageInterface>)senderPhone{
    return [[PhoneSender alloc] init];
}


@end
