//
//  LoginVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "LoginVC.h"
#import "RegisterVC.h"
#import "User.h"

@interface LoginVC ()
@property (weak, nonatomic) IBOutlet UIView *baseView;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;
@property (weak, nonatomic) IBOutlet UITextField *userNameInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewRadius(self.loginBtn, 4);
    ViewRadius(self.registerBtn, 4);
    ViewBorderRadius(self.baseView, 5, .5, [UIColor colorWithRed:0.431 green:0.478 blue:0.510 alpha:1.00]);
    
    NSString *username = [UserDefaults objectForKey:@"username"];
    if (username) {
        self.userNameInput.text = username;
    }
}

- (IBAction)login:(id)sender {
    [self.view endEditing:YES];
    if ([self.userNameInput.text isEqualToString:@""]) {
        MyAlertView(@"请输入用户名！");
    } else if ([self.passwordInput.text isEqualToString:@""]) {
        MyAlertView(@"请输入密码！");
    } else {
        [self realLogin];
    }
}

- (IBAction)registerBtnClicked:(id)sender {
    RegisterVC *vc = [[RegisterVC alloc]initWithNibName:@"RegisterVC" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)realLogin {
    [self showLoadingView];
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    [params setValue:self.userNameInput.text forKey:@"user"];
    [params setValue:self.passwordInput.text forKey:@"pwd"];

    //登录
    [ZQYNetWorking POST:Sys_login_URL parameters:params success:^(id responseObject) {
        [self hideLoading];
        NSDictionary *responseDic = (NSDictionary *)responseObject;
        if ([responseDic[@"flag"] isEqualToString:@"success"]) {
            NSDictionary *user = (NSDictionary *)responseDic[@"user"];
            [[User DefaultUser]updateUserInfoBy:user];
            NSString *userid = [User DefaultUser].userId;
            if (userid) {
                [UserDefaults setObject:userid forKey:@"userid"];
                [UserDefaults setObject:self.userNameInput.text forKey:@"username"];
                [UserDefaults setBool:YES forKey:@"autoLogin"];
                
                AppDelegate *app = (AppDelegate *)APP;
                app.window.rootViewController = app.viewController;
            } else {
                [self showToast:@"登录失败,请重试!"];
            }
        } else {
            [self showToast:(NSString *)responseDic[@"flag"]];
        }
        } failure:^(NSError *error) {
        [self hideLoading];
        NSString *str = [NSString stringWithFormat:@"登陆出错:%@",error];
        [self showToast:str];
    }];
}

@end
