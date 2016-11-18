//
//  ActivityDetailVC.m
//  LeadComDemo
//
//  Created by 蔺宏来 on 2016/11/18.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "ActivityDetailVC.h"

@interface ActivityDetailVC ()

@end

@implementation ActivityDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.tabBarController.hidesBottomBarWhenPushed = YES;
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)gotoEvent:(UIButton *)sender {
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor whiteColor];
    vc.title = sender.titleLabel.text;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
