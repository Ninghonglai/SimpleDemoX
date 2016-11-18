//
//  User.h
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/18.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject



+ (instancetype)DefaultUser;

- (void)updateUserInfo;

- (void)destroy;

@end
