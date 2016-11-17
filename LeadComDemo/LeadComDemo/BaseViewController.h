//
//  BaseViewController.h
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+HUD.h"
#import "AppDelegate.h"
#import "ZQYNetWorking.h"
#import "URLTool.h"

#define MyAlertView(msg) [[[UIAlertView alloc]initWithTitle:@"温馨提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil] show];
#define APP ((AppDelegate*)[UIApplication sharedApplication].delegate)
// View 圆角和加边框
#define ViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

// View 圆角
#define ViewRadius(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]





@interface BaseViewController : UIViewController

//展示加载圈
- (void)showLoadingView;
//展示文字的加载圈
- (void)showLoadingView:(NSString *)title;
//展示提示
- (void)showToast:(NSString *)title;
//展示提示并设定显示时间
- (void)showToast:(NSString *)title withTime:(CGFloat)delay;
//销毁加载圈
- (void)hideLoading;

@end
