//
//  BaseViewConInterface.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/13.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 * 子类实现的方法
 */
@protocol BaseViewConInterface <NSObject>

- (void)childrenNeedsetController;
- (void)childrenBankViewInit;
- (void)childrenGetModel;

@end
