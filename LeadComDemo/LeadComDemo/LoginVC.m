//
//  LoginVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "LoginVC.h"
#import "RegisterVC.h"

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

- (IBAction)register:(id)sender {
    
    
}

- (void)realLogin {
    [self showLoadingView];
    AppDelegate *app = (AppDelegate *)APP;
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    [params setValue:self.userNameInput.text forKey:@"username"];
    [params setValue:self.passwordInput.text forKey:@"password"];

    //登录
    [ZQYNetWorking POST:Sys_login_URL parameters:params success:^(id responseObject) {
        [self hideLoading];
        
        } failure:^(NSError *error) {
        [self hideLoading];
        NSString *str = [NSString stringWithFormat:@"登陆出错:%@",error];
        [self showToast:str];
    }];
}

@end
