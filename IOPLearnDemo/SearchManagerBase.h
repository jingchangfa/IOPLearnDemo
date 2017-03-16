//
//  SearchManagerBase.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchInterface.h"

@interface SearchManagerBase : NSObject<SearchInterface>
@property (nonatomic,assign)id<SearchInterface> children;
//完整的业务
- (void)searchAction;
@end
