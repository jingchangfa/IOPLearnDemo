//
//  BaseViewController.h
//  IOPLearnDemo
//
//  Created by jing on 17/3/13.
//  Copyright © 2017年 jing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewConInterface.h"
#import "BaseViewControllerInterceptor.h"
@interface BaseViewController : UIViewController
@property (nonatomic,assign)id<BaseViewControllerInterceptor> interceptor;
@property (nonatomic,assign)id<BaseViewConInterface> children;
@end
