//
//  SearchManagerBase.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "SearchManagerBase.h"

@implementation SearchManagerBase
- (instancetype)init{
    self = [super init];
    if (self) {
        self.children = self;
    }
    return self;
}
- (void)searchAction{
    NSLog(@"完整的流程如下：");
    
    NSLog(@"第一步：环境设置");
    [self.children searchModel];
    NSLog(@"第三步：持久化");
}
- (void)searchModel{
    
}
@end
