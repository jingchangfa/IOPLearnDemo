//
//  SearchBarComponent.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchManagerBase.h"
#import "SearchViewBase.h"
/**
 * SearchBarComponent有两个组件，他只需要使用就好了
 * 具体组件是那种，controller 决定的
 * 负责处理，内部控件之间的关系
 */
@interface SearchBarComponent : NSObject
@property (nonatomic,strong)SearchManagerBase *searchManager;
@property (nonatomic,strong)SearchViewBase *searchView;
@end
