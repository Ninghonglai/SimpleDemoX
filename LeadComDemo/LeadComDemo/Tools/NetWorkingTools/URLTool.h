//
//  URLTool.h
//  Start_Project
//
//  Created by zhangqingyu on 15/10/7.
//  Copyright © 2015年 张庆玉. All rights reserved.
//

#ifndef URLTool_h
#define URLTool_h

//#define BaseURL @"http://www.chacx.cn"
#define BaseURL @"http://172.16.3.103:8080"


#define Sys_register_URL    [BaseURL stringByAppendingString:@"/sys_register"]
#define Sys_login_URL       [BaseURL stringByAppendingString:@"/sys_login"]
#define Sys_logout_URL      [BaseURL stringByAppendingString:@"/sys_logout"]
#define Person_getUserInfoById_URL          [BaseURL stringByAppendingString:@"/person_getUserInfoById"]

#define Group_getGroupListByPersonId_URL    [BaseURL stringByAppendingString:@"/group_getGroupListByPersonId"]
#define Group_searchGroup_URL               [BaseURL stringByAppendingString:@"/group_searchGroup"]


#endif /* URLTool_h */























