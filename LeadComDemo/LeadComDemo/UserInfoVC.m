//
//  UserInfoVC.m
//  LeadComDemo
//
//  Created by 张庆玉 on 2016/11/18.
//  Copyright © 2016年 张庆玉. All rights reserved.
//

#import "UserInfoVC.h"
#import "MeHeadView.h"


@interface UserInfoVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) UITableView * tableView ;
@property(nonatomic ,weak) MeHeadView *headView ;

@property (nonatomic ,strong) NSArray * titleArray ;
@property (nonatomic ,strong) NSArray * imageArray ;


@end

@implementation UserInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.初始化列表
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, Main_Screen_Width, self.view.bounds.size.height-49) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    //2.初始化头部view
    MeHeadView *headerView =  [MeHeadView headerView];
    self.headView = headerView;
    self.tableView.tableHeaderView = headerView;
    //[headerView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(aboutMeClick)]];
    
    
    headerView.imageView.userInteractionEnabled = YES;
    //[headerView.imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewClick)]];
    
    self.titleArray = @[ @[@"QQ",@"邮箱",@"手机号码"], @[@"退出当前账号"]];
    
    
    //self.imageArray = @[ @[@"mine_icon_accounts_normal",@"mine_icon_serviceplans_normal",@"mine_icon_service-record_normal",@"mine_icon_ push_normal"],  @[@"mine_icon_posts_normal",@"mine_icon_message_normal",@"mine_icon_share_normal"], @[@"mine_icon_code_normal",@"mine_icon_set_normal",@"mine_icon_phone_normal"]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
 
}


#pragma -mark TableView数据源&代理
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    }
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    NSArray * titleArray = self.titleArray[indexPath.section];
    //NSArray * imageArray = self.imageArray[indexPath.section];
    
    cell.textLabel.text = titleArray[indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:imageArray[indexPath.row]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 46;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0://QQ
            
                break;
            case 1://邮箱
            {
            
            }
                break;
            case 2://手机号码
            {

            }
                break;
        }
    }else if (indexPath.section == 1){
        switch (indexPath.row) {
            case 0://退出登录
            {

            }
                break;
        }
    }
}


@end
