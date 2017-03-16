
//
//  Iequip.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/16.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 http://www.jianshu.com/p/a0351b6abe7a
 
 已有对象提供增强额外功能，
 不修改原有对象，
 不继承，
 将已有对象传入自建类的构造方法中，
 在自建类中创建方法，
 调用对象的方法的同时增加自己需要的内容，创建自建类的对象，调用自建类的方法，此时自建类的方法已经包含了对象的方法
 */


@protocol Iequip <NSObject>
/*
游戏里面每个角色有武器、鞋子、护腕、戒指、还有各种红宝石、蓝宝石、黄宝石等等。
下面需求开始：设计游戏的装备系统，基本要求，要可以计算出每种装备在镶嵌了各种宝石后的攻击力和描述：
具体需求：
1、武器（攻击力20） 、戒指（攻击力5）、护腕（攻击力5）、鞋子（攻击力5）
2、蓝宝石（攻击力5/颗）、黄宝石（攻击力10/颗）、红宝石（攻击力15/颗）
3、每个装备可以随意镶嵌3颗
 */


/*
 武器都必须实现的接口
 
 * caculateAttack  攻击力
 * IequipDescription 装备的描述
 */
- (int)caculateAttack;
- (NSString *)iequipDescription;
/**
 设计思路:

 每个宝石维护一个装备
 **/
@end
