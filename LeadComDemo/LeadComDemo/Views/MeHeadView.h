//
//  MeHeadView.h
//  SunrayWoman
//
//  Created by 小面包oo on 15/10/20.
//  Copyright (c) 2015年 zijing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeHeadView : UIView
+ (instancetype)headerView;
@property (weak, nonatomic) IBOutlet UILabel *mobieLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *redPoint;

@end