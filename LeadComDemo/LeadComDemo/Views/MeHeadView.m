//
//  MeHeadView.m
//  SunrayWoman
//
//  Created by 小面包oo on 15/10/20.
//  Copyright (c) 2015年 zijing. All rights reserved.
//

#import "MeHeadView.h"

@implementation MeHeadView

- (void)awakeFromNib
{
    ViewRadius(self.imageView, 23);
}

+ (instancetype)headerView
{
    return  LoadXIB(@"MeHeadView");
}


@end
