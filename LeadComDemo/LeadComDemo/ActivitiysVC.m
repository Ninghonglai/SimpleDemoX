//
//  ActivitiysVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "ActivitiysVC.h"
#import "UserInfoVC.h"

@interface ActivitiysVC ()

@end

@implementation ActivitiysVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self setupLeftNavBtn];
}

- (void)setupLeftNavBtn {
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [btn setTitle:@"ME" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 44, 44);
    
    [btn addTarget:self action:@selector(showUserinfo) forControlEvents:UIControlEventTouchUpInside];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    btn.contentHorizontalAlignment=UIControlContentHorizontalAlignmentRight ;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}


- (void)showUserinfo {
    UserInfoVC *vc = [[UserInfoVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
