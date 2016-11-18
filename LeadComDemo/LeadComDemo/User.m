//
//  User.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/18.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "User.h"


@implementation User
static User *share = nil;
static dispatch_once_t onceToken;


+ (instancetype)DefaultUser {
    dispatch_once(&onceToken, ^{
        share = [[User alloc]init];
    });
    return share;
}


- (void)updateUserInfo {
    
}

- (void)destroy {
    onceToken = 0;
    share = nil;
}


@end
