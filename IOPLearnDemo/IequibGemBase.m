//
//  equibGemBase.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/16.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "IequibGemBase.h"

@implementation IequibGemBase
- (instancetype)initWithIequip:(id<Iequip>)iequip{
    self = [super init];
    if (self) {
        self.iequip = iequip;
        self.childrenIequip = self;//base是客观不存在的
    }
    return self;
}
- (int)caculateAttack{
    int iequip = [self.iequip caculateAttack];
    int gem = [self.childrenIequip gemCaculateAttack];
    return iequip+gem;
}
- (NSString *)iequipDescription{
    NSString *iequip = [self.iequip iequipDescription];
    NSString *gem = [self.childrenIequip gemDescription];
    return [NSString stringWithFormat:@"%@ \n镶嵌了一颗 %@",iequip,gem];
}
@end
