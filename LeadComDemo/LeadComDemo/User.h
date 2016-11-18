//
//  User.h
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/18.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic, strong) NSString *userId;

@property (nonatomic, strong) NSString *accessToken;
@property (nonatomic, strong) NSString *createDate;
@property (nonatomic, strong) NSString *createDateStr;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *headPhoto;
@property (nonatomic, strong) NSString *isHistory;
@property (nonatomic, strong) NSString *lastModifiedTime;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *prop;
@property (nonatomic, strong) NSString *qq;
@property (nonatomic, strong) NSString *qqAccessToken;
@property (nonatomic, strong) NSString *sex;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *username;


+ (instancetype)DefaultUser;

- (void)requestUserInfoByID:(NSString *)userid;

- (void)updateUserInfoBy:(NSDictionary*)dic;

- (void)destroy;

@end

/*
 flag = success;
 user =     {
 accessToken = 3bb72eac817c4ce58c3209c74ccbeabb;
 createDate = 1479363506124;
 createDateStr = "<null>";
 email = "<null>";
 headPhoto = "<null>";
 id = 582d4bb27cb8aa50f42a2301;
 isHistory = N;
 lastModifiedTime = "<null>";
 name = 15913125055;
 password = "";
 phone = 15913125055;
 prop =         {
 };
 qq = "<null>";
 qqAccessToken = "<null>";
 sex = "<null>";
 status = "<null>";
 username = "<null>";
 };
 */
