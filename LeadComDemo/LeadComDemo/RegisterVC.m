//
//  RegisterVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "RegisterVC.h"
#import "User.h"

@interface RegisterVC ()
@property (weak, nonatomic) IBOutlet UIView *baseView;
@property (weak, nonatomic) IBOutlet UITextField *usernameInput;

@property (weak, nonatomic) IBOutlet UITextField *passwordInput;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;
@end

@implementation RegisterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewRadius(self.registerBtn, 4);
    //ViewBorderRadius(self.baseView, 3, 0.5, [UIColor colorWithRed:0.431 green:0.478 blue:0.510 alpha:1.00]);
}

- (IBAction)registerBtnClicked:(id)sender {
    [self.view endEditing:YES];
    if ([self.usernameInput.text isEqualToString:@""]) {
        MyAlertView(@"请输入用户名！");
    } else if ([self.passwordInput.text isEqualToString:@""]) {
        MyAlertView(@"请输入密码！");
    } else {
        [self startRegister];
    }
}

- (void)startRegister {
    [self showLoadingView];
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    [params setValue:self.usernameInput.text forKey:@"user"];
    [params setValue:self.passwordInput.text forKey:@"pwd"];
    
    //登录
    [ZQYNetWorking POST:Sys_register_URL parameters:params success:^(id responseObject) {
        [self hideLoading];
        NSDictionary *responseDic = (NSDictionary *)responseObject;
        if ([responseDic[@"flag"] isEqualToString:@"succeed"]) {
            NSDictionary *user = (NSDictionary *)responseDic[@"user"];
            [[User DefaultUser]updateUserInfoBy:user];
            NSString *userid = [User DefaultUser].userId;
            if (userid) {
                [UserDefaults setObject:userid forKey:@"userid"];
                [UserDefaults setObject:self.usernameInput.text forKey:@"username"];
                [UserDefaults setBool:YES forKey:@"autoLogin"];
                
                AppDelegate *app = (AppDelegate *)APP;
                app.window.rootViewController = app.viewController;
            } else {
                [self showToast:@"注册失败,请重试!"];
            }
        } else {
            [self showToast:(NSString *)responseDic[@"flag"]];
        }
    } failure:^(NSError *error) {
        [self hideLoading];
        NSString *str = [NSString stringWithFormat:@"注册出错:%@",error];
        [self showToast:str];
    }];
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
