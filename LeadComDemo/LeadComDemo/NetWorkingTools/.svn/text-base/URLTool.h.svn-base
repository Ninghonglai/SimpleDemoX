//
//  URLTool.h
//  Start_Project
//
//  Created by zhangqingyu on 15/10/7.
//  Copyright © 2015年 张庆玉. All rights reserved.
//

#ifndef URLTool_h
#define URLTool_h

#define SunRay_URL          @"http://appserver.51bestbaby.com/sunray"       //app接口(x测试)
#define SunRay_Custom_URL   @"http://clouddoc.51bestbaby.com"                    //诊断服务器接口(x测试)
#define SunRay_PDF_URL      @"http://clouddoc.51bestbaby.com"                    //诊断报告pdf下载(x测试)
#define SunRay_ZhuanFa_URL  @"http://clouddoc.51bestbaby.com/BBManage/sendto"    //转发(x测试)
#define SunRay_GongNeng_URL @"http://clouddoc.51bestbaby.com/BBManage/mdocument" //功能(x测试)

//#define SunRay_URL            @"http://112.74.53.180/bbapp"        //app接口
//#define SunRay_Custom_URL     @"http://112.74.53.168/"         //诊断服务器接口
//#define SunRay_PDF_URL        @"http://112.74.53.168/"         //诊断报告pdf下载
//#define SunRay_ZhuanFa_URL    @"http://112.74.53.168/bbmanage/sendto"//转发
//#define SunRay_GongNeng_URL   @"http://112.74.53.168/bbmanage/mdocument"//功能

//[2.1.1] 短信
#define GetEms_URL [SunRay_URL stringByAppendingString:@"/api/common/msg.json"]
//[3.1.1]医生登录
#define DoctorLogin_URL [SunRay_URL stringByAppendingString:@"/api/doctor/login.json"]
//[3.1.7] 绑定个推
#define Getui_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/getui/bind.json"]
//[3.1.8] 解绑个推
#define GetuiUnbind_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/getui/unbind.json"]
//[1.1.3] 获取孕妇个人信息
#define GravidaPersonalInfo_URL [SunRay_URL stringByAppendingString:@"/api/gravida/personal/info.json"]
//[2.1.4] 广告列表
#define Advertise_URL [SunRay_URL stringByAppendingString:@"/api/common/advertise.json"]
//[3.1.10] 坐标上传并返回附近数据
#define LocationReport_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/pointer.json"]

/****** ******** ******* ******* ******* 个人中心界面接口 ****** ******** ******* ******* *******/

/**
 *  管理后台接口
 */

//[3.1.2] 获取医生个人信息
#define DoctorInfo_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/info.json"]
//[3.1.3] 修改医生个人信息
#define DoctorUpdate_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/update.json"]
//[3.1.4] 修改医生在线状态
#define DoctorStatusModify_URL [SunRay_URL stringByAppendingString:@"/api/doctor/status/modify.json"]
//[3.1.5] 获取孕妇对医生评价列表
#define CommentList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/comment/list.json"]
//[3.1.6] 评价申诉
#define Appeal_URL [SunRay_URL stringByAppendingString:@"/api/doctor/appeal/add.json"]
//[2.1.5] 地区信息
#define Locations_URL [SunRay_URL stringByAppendingString:@"/api/common/locations.json"]
//[2.1.3] 用户反馈
#define Feedback_URL [SunRay_URL stringByAppendingString:@"/api/common/feedback.json"]
//[2.1.2] 版本检测
#define Version_URL [SunRay_URL stringByAppendingString:@"/api/common/version.json"]
//[3.4.1] 我的钱包
#define PersonalAccounts_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/accounts.json"]
//[3.5.1] 我的优惠券列表
#define PromoPromoList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/promo/promoList.json"]
//[3.5.2] 赠送优惠券
#define PromoGivingPromo_URL [SunRay_URL stringByAppendingString:@"/api/doctor/promo/givingPromo.json"]

/**
 三瑞接口
 **/

//获取诊断记录 1107
#define Diagnosislist_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/getdiagnosislist"]
//获取医生诊断记录详情 1108
#define Getdiagnosishisdata_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/getdiagnosishisdata"]

/****** ******** ******* ******* *******  诊断界面接口 ****** ******** ******* ******* *******/

/**
 紫鲸接口
 **/
//8. 获取医嘱列表
#define AdviseList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/advise/list.json"]
//9. 增加医生个人医嘱
#define AdviseAdd_URL [SunRay_URL stringByAppendingString:@"/api/doctor/advise/add.json"]
//10. 删除医生个人医嘱
#define AdviseDelete_URL [SunRay_URL stringByAppendingString:@"/api/doctor/advise/delete.json"]
//11. 获取下单列表
#define AccountList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/account/list.json"]
//12. 医生接单
#define AccountAdd_URL [SunRay_URL stringByAppendingString:@"/api/doctor/account/add.json"]
//[3.4.4] 诊断完成回调
#define TradeDiagnosed_URL [SunRay_URL stringByAppendingString:@"/api/doctor/account/trade/diagnosed.json"]
//[3.4.5] 更改诊断订单状态
#define TradeStatus_URL [SunRay_URL stringByAppendingString:@"/api/doctor/account/trade/update_status.json"]

/**
 三瑞接口
 **/

//获取档案详情 1101
#define Getdata_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/getdata"]
//获取历史档案记录列表 1102
#define Gethistorylist_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/gethistorylist"]
//保存（上传）分析结果 1103
#define Saveresult_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/saveresult"]
//档案分析 1104
#define Analyse_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/analyse"]
//获取流媒体声音 1105
#define GetFHR_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/getFHR"]
//获取流媒体声音 1106
#define Saveadvice_URL [SunRay_Custom_URL stringByAppendingString:@"/doctor/saveadvice"]
//报告下载 1201
#define GetDocument_URL [SunRay_PDF_URL stringByAppendingString:@"/document/getdocument"]


/****** ******** ******* ******* *******  社区界面接口 ****** ******** ******* ******* *******/

/**
 紫鲸接口
 **/

//[3.2.1] 我发表的帖子
#define MyArticleList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/my.json"]
//[3.2.2] 我收藏的帖子
#define ArticleFavourList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/favourites.json"]
//[3.2.3] 收藏帖子
#define ArticleFavourite_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/favourite.json"]
//[3.2.4] 取消收藏帖子
#define ArticleUnfavourite_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/unfavourite.json"]
//[3.2.5] 获取帖子分类列表
#define ArticleCategories_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/categories.json"]
//[3.2.6] 根据分类获取帖子列表
#define ArticleList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/list.json"]
//[3.2.7] 帖子详情
#define ArticleDetail_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/detail.json"]
//[3.2.8] 评论帖子
#define ArticleComment_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/comment.json"]
//[3.2.9] 搜索帖子
#define ArticleSearch_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/search.json"]
//[3.2.10] 发表帖子
#define ArticlePublish_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/publish.json"]
//[3.2.11] 删除发表的帖子
#define ArticleDelete_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/delete.json"]
//[3.2.12] 赞帖子
#define ArticlePraise_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/praise.json"]
//[3.2.13] 取消赞的帖子
#define ArticleUnpraise_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/unpraise.json"]
//[3.2.14] 获取帖子评论列表
#define ArticleCommentList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/article/comments.json"]
//[3.2.15] 我的评论
#define PersonalCommentList_URL [SunRay_URL stringByAppendingString:@"/api/doctor/personal/comments.json"]


/****** ******** ******* ******* *******  消息界面接口 ****** ******** ******* ******* *******/

/**
 紫鲸接口
 **/

//[3.3.1] 我的好友
#define MyFriend_URL [SunRay_URL stringByAppendingString:@"/api/doctor/friend/my.json"]
//[3.3.2] 添加好友
#define AddFriend_URL [SunRay_URL stringByAppendingString:@"/api/doctor/friend/add.json"]
//[3.3.3] 删除好友
#define DeleteFriend_URL [SunRay_URL stringByAppendingString:@"/api/doctor/friend/delete.json"]
//[3.3.4] 好友详情
#define FriendDetail_URL [SunRay_URL stringByAppendingString:@"/api/doctor/friend/detail.json"]
//[3.3.5] 搜索好友
#define SearchFriend_URL [SunRay_URL stringByAppendingString:@"/api/doctor/friend/search.json"]





#endif /* URLTool_h */























