//
//  AppDelegate.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "AppDelegate.h"
#import "RDVTabBarItem.h"
#import "IQKeyboardManager.h"

#import "BaseNavigationController.h"
#import "LoginVC.h"
#import "ActivitiysVC.h"
#import "MessageVC.h"
#import "WorkVC.h"
#import "CommunityVC.h"
#import "DiscussionVC.h"

#define UserDefaults [NSUserDefaults standardUserDefaults]



@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    [self setupViewControllers];
    
//    BOOL  isFirstIn = [UserDefaults boolForKey:@"isFirstIn"];
//    if (!isFirstIn) {//第一次登陆
//        self.window.rootViewController = [[GuideViewController alloc] init];
//        [UserDefaults setBool:YES forKey:@"isFirstIn"];
//    }else{
    BOOL  autoLogin = [UserDefaults boolForKey:@"autoLogin"];
        if (autoLogin) {//自动
            self.window.rootViewController = self.viewController;
        }else{
            self.window.rootViewController = [[LoginVC alloc]initWithNibName:@"LoginVC" bundle:nil];
        }
//    }
    //添加键盘控制
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    manager.enable = YES;
    manager.shouldResignOnTouchOutside = YES;
    manager.shouldToolbarUsesTextFieldTintColor = YES;
    manager.enableAutoToolbar = YES;
    
    return YES;
}

#pragma mark - 添加tabbar子VC Methods
- (void)setupViewControllers {
    UIViewController *firstViewController = [[ActivitiysVC alloc] initWithNibName:@"ActivitiysVC" bundle:nil];
    firstViewController.title = @"活动";
    BaseNavigationController *firstNavigationController = [[BaseNavigationController alloc]
                                                           initWithRootViewController:firstViewController];
    
    UIViewController *secondViewController = [[MessageVC alloc] initWithNibName:@"MessageVC" bundle:nil];
    secondViewController.title = @"消息";
    BaseNavigationController *secondNavigationController = [[BaseNavigationController alloc]
                                                            initWithRootViewController:secondViewController];
    
    UIViewController *thidViewController = [[WorkVC alloc]initWithNibName:@"WorkVC" bundle:nil];
    thidViewController.title = @"工作";
    BaseNavigationController *thirdNavigationController = [[BaseNavigationController alloc]initWithRootViewController:thidViewController];
    
    UIViewController *fourthViewController = [[CommunityVC alloc]initWithNibName:@"CommunityVC" bundle:nil];
    fourthViewController.title = @"群体";
    BaseNavigationController *fourthNavigationController = [[BaseNavigationController alloc]initWithRootViewController:fourthViewController];
    
    UIViewController *fifthViewController = [[DiscussionVC alloc] initWithNibName:@"DiscussionVC" bundle:nil];
    fifthViewController.title = @"讨论";
    BaseNavigationController *fifthNavigationController = [[BaseNavigationController alloc]
                                                           initWithRootViewController:fifthViewController];
    
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    [tabBarController setViewControllers:@[firstNavigationController, secondNavigationController,
                                           thirdNavigationController,fourthNavigationController,fifthNavigationController]];
    
    self.viewController = tabBarController;
    UIView *separteView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, tabBarController.view.bounds.size.width, 0.5)];
    separteView.backgroundColor = [UIColor colorWithRed:0.431 green:0.478 blue:0.510 alpha:1.00];
    [tabBarController.tabBar addSubview:separteView];
    
    [self customizeTabBarForController:tabBarController];
}

#pragma mark 自定义tabBar
- (void)customizeTabBarForController:(RDVTabBarController *)tabBarController {
    NSArray *tabBarItemImages = @[@"bar_icon_diagnosis", @"bar_icon_-message", @"bar_icon_shequ", @"bar_icon_user", @"bar_icon_diagnosis"];
    NSArray *tabBarTitles = @[@"活动", @"消息", @"工作", @"群体",@"讨论"];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_pre",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        item.unselectedTitleAttributes = @{
                                           NSFontAttributeName: [UIFont boldSystemFontOfSize:13],
                                           NSForegroundColorAttributeName: [UIColor colorWithRed:0.196 green:0.196 blue:0.196 alpha:1.00],
                                           };
        item.selectedTitleAttributes = @{
                                         NSFontAttributeName: [UIFont boldSystemFontOfSize:13],
                                         NSForegroundColorAttributeName: [UIColor colorWithRed:0.969 green:0.298 blue:0.392 alpha:1.00],
                                         };
        NSLog(@"item-->frame==%f",item.frame.origin.y);
        item.backgroundColor = [UIColor colorWithRed:0.243 green:0.678 blue:0.914 alpha:1.00];
        
        item.title = tabBarTitles[index];
        index++;
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
