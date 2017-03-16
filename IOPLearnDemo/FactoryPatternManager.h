//
//  FactoryPatternManager.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SenderMessageInterface.h"
/**
 * 工厂：根据客户的需求生产,制定功能的对象
 * 生产对象
 */

@interface FactoryPatternManager : NSObject

//(静态)普通工厂模式
typedef NS_ENUM(NSInteger){
    Sender_Type_Email = 0,
    Sender_Type_Phone = 1,
    Sender_Type_Unknow = 2,
    
} Sender_Type;
+ (id<SenderMessageInterface>)senderWithType:(Sender_Type)type;
//(静态)多个工厂方法模式
+ (id<SenderMessageInterface>)senderEmail;
+ (id<SenderMessageInterface>)senderPhone;

/*
 上两种的缺点：违背了闭包原则
 * 类的创建依赖工厂类，也就是说，如果想要拓展程序，必须对工厂类进行修改
 **/

@end
