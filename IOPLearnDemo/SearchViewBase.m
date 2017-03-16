
//
//  SearchViewBase.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "SearchViewBase.h"

@implementation SearchViewBase
- (instancetype)init{
    self = [super init];
    if (self) {
        self.children = self;
        self.backgroundColor = [self.children systomColor];
    }
    return self;
}
- (UIColor *)systomColor{
    return [UIColor whiteColor];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
