//
//  BaseViewController.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)showLoadingView {
    [self showHudInView:self.view hint:nil];
}

- (void)showLoadingView:(NSString *)title {
    [self showHudInView:self.view hint:title];
}

- (void)showToast:(NSString *)title {
    [self showHint:title];
}

- (void)showToast:(NSString *)title withTime:(CGFloat)delay {
    [self showHint:title withTime:delay];
}

- (void)hideLoading {
    [self hideHud];
}

@end
