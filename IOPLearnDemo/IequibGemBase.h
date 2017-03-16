//
//  equibGemBase.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/16.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iequip.h"
@protocol ChildrenGem <NSObject>
- (NSString *)gemDescription;
- (int)gemCaculateAttack;
@end
@interface IequibGemBase : NSObject<Iequip>
/*
 宝石无法单组存在,必须依赖装备
 iequip 维护的装备(可能镶嵌了宝石，也可能没有)
 initWithIequip 镶嵌宝石
 return 镶嵌了宝石的装备
 */
@property (nonatomic,strong)id<Iequip> iequip;
@property (nonatomic,assign)id<ChildrenGem>childrenIequip;
- (instancetype)initWithIequip:(id<Iequip>)iequip;

@end
