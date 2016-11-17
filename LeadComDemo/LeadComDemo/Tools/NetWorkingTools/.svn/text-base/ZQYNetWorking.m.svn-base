//
//  ZQYNetWorking.m
//  Start_Project
//
//  Created by zhangqingyu on 15/10/7.
//  Copyright © 2015年 张庆玉. All rights reserved.
//

#import "ZQYNetWorking.h"
#import "OriginalSerializer.h"

@implementation ZQYNetWorking

#pragma mark - GET请求
+ (void)GET:(NSString *)url parameters:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    // 1.获得请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/text",@"text/html", nil];
    NSLog(@"url = %@发送参数:%@",url, params);
    // 2.发送请求
    [mgr GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"返回结果：%@", responseObject);
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
        NSLog(@"url = %@ ---错误---> error = %@",url,error);
    }];
}

#pragma mark - POST请求
+ (void)POST:(NSString *)url parameters:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    // 1.获得请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    mgr.responseSerializer =[AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/text",@"text/html",@"text/plain",nil];
    NSLog(@"url=%@ 发送参数:%@",url, params);
    // 2.发送请求
    [mgr POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"url=%@ 返回结果：%@",url, responseObject);
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
        NSLog(@"url = %@ ---错误---> error = %@ ----->>>operation->>%@",url,error,operation.responseString);
    }];
}

#pragma mark - 特殊POST请求
+ (void)JsonPOST:(NSString *)url parameters:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    // 1.获得请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    mgr.responseSerializer = [OriginalSerializer serializer];
    NSLog(@"url=%@ 发送参数:%@",url, params);
    // 2.发送请求
    [mgr POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"url=%@ 返回结果：%@",url, responseObject);
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
        NSLog(@"url = %@ ---错误---> error = %@",url,error);
    }];
}


#pragma mark - 上传文件的网络请求
+ (void)POST:(NSString *)url parameters:(NSDictionary *)params constructingBodyWithBlock:(void (^)(id<AFMultipartFormData>))block success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    // 1.获得请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    //    mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/text",@"text/html", nil];
    // 2.发送请求
    NSLog(@"url = %@发送参数:%@",url, params);
    [mgr POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        block(formData);
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
         NSLog(@"url=%@ 返回结果：%@",url, responseObject);
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
        NSLog(@"url = %@ ---错误---> error = %@",url,error);
    }];
}



@end
