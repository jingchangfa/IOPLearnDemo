
//
//  BaseViewController.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/13.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<BaseViewControllerInterceptor>

@end

@implementation BaseViewController
- (instancetype)init{
    self = [super init];
    if (self) {
        self.interceptor = self;
        // 子类必须实现BaseViewConInterface
        // 父类不能直接用
        self.children = self;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setController];
    [self bankViewInit];
    [self getModel];
}
- (void)setController{
    //统一的
    
    //子类自定义
    [self.children childrenNeedsetController];
}
- (void)bankViewInit{
    //统一的
    
    //子类自定义
    [self.children childrenBankViewInit];
}
- (void)getModel{
    //统一的
    
    //子类自定义
    [self.children childrenGetModel];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
