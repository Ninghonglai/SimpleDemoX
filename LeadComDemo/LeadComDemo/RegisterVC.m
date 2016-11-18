//
//  RegisterVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "RegisterVC.h"

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
    
}


- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
