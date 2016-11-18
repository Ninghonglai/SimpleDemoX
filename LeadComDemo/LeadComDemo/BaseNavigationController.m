//
//  BaseNavigationController.m
//  SunrayWoman
//
//  Created by 小面包oo on 15/9/11.
//  Copyright (c) 2015年 zijing. All rights reserved.
//

#import "BaseNavigationController.h"
#import "RDVTabBarController.h"


@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setBarTintColor:[UIColor whiteColor]];// colorWithRed:0.533 green:0.545 blue:0.549 alpha:1.00]];
    self.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                              [UIColor blackColor],NSForegroundColorAttributeName,
                                              [UIFont systemFontOfSize:18],NSFontAttributeName,
                                              nil];
    [[UIBarButtonItem appearance]setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                         [UIColor whiteColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:16],NSFontAttributeName, nil] forState:(0)];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
    [super pushViewController:viewController animated:animated];
    
    // 设置leftBarButtonItem
    if (viewController == self.viewControllers[0]) {
        UIButton *btn = [[UIButton alloc]initWithFrame: CGRectMake(0, 0, 30, 30)];
        [btn setBackgroundImage:[UIImage imageNamed:@"account"] forState:UIControlStateNormal];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    }
  
//    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        self.interactivePopGestureRecognizer.delegate = nil;
//    }
}

- (void)gotoAccount{
    
}

@end
