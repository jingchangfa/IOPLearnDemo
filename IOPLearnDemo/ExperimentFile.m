
//
//  ExperimentFile.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/15.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "ExperimentFile.h"
#import "FactoryPatternManager.h"
#import "EmailFactoryPattern.h"
#import "PhoneFactoryPattern.h"
#import "SingletonExport.h"

#import "ArmEquip.h"
#import "RedGem.h"
#import "BlueGem.h"

@implementation ExperimentFile{
    // 所有设计模式的初衷都是，增加代码的延展性，减少维护成本
    // 对延展开放,对修改关闭
    // 以存在的类，禁止修改。。。(可以通过装饰，适配等模式延展)
}
- (instancetype)init{
    self = [super init];
    if (self) {
//        [self experiment];
        [self decoratorMode];
    }
    return self;
}
- (void)experiment{
    //静态工厂使用
    id<SenderMessageInterface> obj;
    obj = [FactoryPatternManager senderWithType:Sender_Type_Email];
    [obj sendMessage];
    obj = [FactoryPatternManager senderWithType:Sender_Type_Phone];
    [obj sendMessage];
    obj = [FactoryPatternManager senderEmail];
    [obj sendMessage];
    obj = [FactoryPatternManager senderPhone];
    [obj sendMessage];

    //抽象工厂
    obj = [EmailFactoryPattern sender];
    [obj sendMessage];

    obj = [PhoneFactoryPattern sender];
    [obj sendMessage];
    
    //singleton
    SingletonExport *share = [SingletonExport share];
    
    
}
- (void)decoratorMode{
    //装饰者模式（我感觉咋跟模版似得）
    id<Iequip> iequip = [[ArmEquip alloc] init];//鞋子
    [self iequipDes:iequip];

    iequip = [[RedGem alloc] initWithIequip:iequip];//镶嵌了一个红宝石
    [self iequipDes:iequip];

    iequip = [[RedGem alloc] initWithIequip:iequip];//镶嵌了一个红宝石
    [self iequipDes:iequip];

    iequip = [[BlueGem alloc] initWithIequip:iequip];//镶嵌了一个蓝宝石
    [self iequipDes:iequip];
    
}
- (void)iequipDes:(id<Iequip>)iequip{
    NSLog(@"攻击力：%d",[iequip caculateAttack]);
    NSLog(@"装备描述：%@",[iequip iequipDescription]);
}
@end
