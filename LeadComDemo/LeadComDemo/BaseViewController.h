//
//  BaseViewController.h
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import <UIKit/UIKit.h>




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
