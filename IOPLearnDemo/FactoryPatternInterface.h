
//
//  FactoryPatternInterface.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SenderMessageInterface.h"
@protocol FactoryPatternInterface <NSObject>
//抽象工厂方法：每一类被加工者，都一一对应一个工厂类，如果想要拓展程序，通过添加工厂类即可
//用协议来约束

+ (id<SenderMessageInterface>)sender;
@end
