//
//  ActivitiysVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/17.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "ActivitiysVC.h"
#import "ActivityDetailVC.h"

@interface ActivitiysVC ()

@end

@implementation ActivitiysVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)gotoDetailVC:(UIButton*)sender {
    UIViewController *vc = [[ActivityDetailVC alloc]initWithNibName:@"ActivityDetailVC" bundle:nil];
    vc.title = sender.titleLabel.text;
    [self.navigationController pushViewController:vc animated:YES];
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
