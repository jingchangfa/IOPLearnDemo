
//
//  BlueLocSearchViewController.m
//  IOPLearnDemo
//
//  Created by jing on 17/3/14.
//  Copyright © 2017年 jing. All rights reserved.
//

#import "BlueLocSearchViewController.h"
#import "SearchBarComponent.h"
#import "BlueSearchView.h"
#import "LocationSearch.h"

@interface BlueLocSearchViewController ()
@property (nonatomic,strong)SearchBarComponent *blueLocComponent;
@end

@implementation BlueLocSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (SearchBarComponent *)blueLocComponent{
    if (!_blueLocComponent) {
        _blueLocComponent = [[SearchBarComponent alloc] init];
        _blueLocComponent.searchView = [[BlueSearchView alloc] init];
        _blueLocComponent.searchManager = [[LocationSearch alloc] init];
    }
    return _blueLocComponent;
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
