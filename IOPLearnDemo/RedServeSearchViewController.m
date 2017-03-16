//
//  RedServeSearchViewController.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "RedServeSearchViewController.h"
#import "SearchBarComponent.h"
#import "RedSearchView.h"
#import "ServerSearch.h"
@interface RedServeSearchViewController ()
@property (nonatomic,strong)SearchBarComponent *redServeComponent;

@end

@implementation RedServeSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (SearchBarComponent *)redServeComponent{
    if (!_redServeComponent) {
        _redServeComponent = [[SearchBarComponent alloc] init];
        _redServeComponent.searchView = [[RedSearchView alloc] init];
        _redServeComponent.searchManager = [[ServerSearch alloc] init];
    }
    return _redServeComponent;
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
