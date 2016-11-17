//
//  ZQYNetWorking.h
//  Start_Project
//
//  Created by zhangqingyu on 15/10/7.
//  Copyright © 2015年 张庆玉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

static NSString * const HTTPServerAddress = @"http://120.24.210.87:444";

typedef void (^successBlock)(id result);
typedef void (^failure)(NSError *error);

@interface ZQYNetWorking : NSObject

/**
 *  发送一个GET请求
 *  @param url     请求参数路径
 *  @param params  请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)GET:(NSString *)url parameters:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

+ (void)POST:(NSString *)url parameters:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

+ (void)POST:(NSString *)url parameters:(NSDictionary*)params constructingBodyWithBlock:(void (^)(id<AFMultipartFormData> formData))block success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

+ (void)JsonPOST:(NSString *)url parameters:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure;

///**
// * 下载文件
// *
// * @param string aUrl 请求文件地址
// * @param string aSavePath 保存地址
// * @param string aFileName 文件名
// * @param int aTag tag标识
// */
//+ (void)downloadFileURL:(NSString *)aUrl savePath:(NSString *)aSavePath fileName:(NSString *)aFileName tag:(NSInteger)aTag;

@end
