//
//  UIViewController+HUD.h
//  Start_Project
//
//  Created by zhangqingyu on 15/10/7.
//  Copyright © 2015年 张庆玉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HUD)

- (void)showHudInView:(UIView *)view hint:(NSString *)hint;

- (void)hideHud;

- (void)showHint:(NSString *)hint;

- (void)showHint:(NSString *)hint withTime:(CGFloat) delay;

// 从默认(showHint:)显示的位置再往上(下)yOffset
- (void)showHint:(NSString *)hint yOffset:(float)yOffset;

@end
