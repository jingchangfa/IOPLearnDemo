//
//  SingletonExport.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "SingletonExport.h"

@implementation SingletonExport
+ (SingletonExport *)share{
    static SingletonExport *share = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        share = [[SingletonExport alloc] init];
    });
    return share;
}
@end
