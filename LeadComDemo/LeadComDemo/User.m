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

- (void)requestUserInfoByID:(NSString *)userid {
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    [params setValue:userid forKey:@"personId"];
    
    [ZQYNetWorking GET:Person_getUserInfoById_URL parameters:params success:^(id responseObject) {
        NSDictionary *responseDic = (NSDictionary *)responseObject;
        if ([responseDic[@"flag"] isEqualToString:@"success"]) {
            NSDictionary *user = (NSDictionary *)responseDic[@"user"];
            [self updateUserInfoBy:user];
            NSString *userid = [User DefaultUser].userId;
            if (userid) {
            } else {
            }
        } else {
        }
    } failure:^(NSError *error) {
    }];
}

- (void)updateUserInfoBy:(NSDictionary*)dic {
    self.userId         = (NSString *)dic[@"id"];
    self.accessToken    = (NSString *)dic[@"accessToken"];
    self.createDate     = (NSString *)dic[@"createDate"];
    self.createDateStr  = (NSString *)dic[@"createDateStr"];
    self.email          = (NSString *)dic[@"email"];
    self.headPhoto      = (NSString *)dic[@"headPhoto"];
    self.isHistory      = (NSString *)dic[@"isHistory"];
    self.lastModifiedTime = (NSString *)dic[@"lastModifiedTime"];
    self.name           = (NSString *)dic[@"name"];
    self.password       = (NSString *)dic[@"password"];
    self.phone          = (NSString *)dic[@"phone"];
    self.prop           = (NSString *)dic[@"prop"];
    self.qq             = (NSString *)dic[@"qq"];
    self.qqAccessToken  = (NSString *)dic[@"qqAccessToken"];
    self.sex            = (NSString *)dic[@"sex"];
    self.status         = (NSString *)dic[@"status"];
    self.username       = (NSString *)dic[@"username"];
}

/*
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

 */
- (void)destroy {
    onceToken = 0;
    share = nil;
}


@end
