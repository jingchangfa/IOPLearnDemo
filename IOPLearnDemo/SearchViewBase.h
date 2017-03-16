//
//  SearchViewBase.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchInterface.h"
#import "SearchViewUIInterface.h"
@interface SearchViewBase : UIView<SearchViewUIInterface>
@property (nonatomic,assign)id<SearchViewUIInterface> children;
@end
