//
//  SecondViewController.m
//  LoadResourceDemo
//
//  Created by SoDo on 2019/1/9.
//  Copyright © 2019 shaochong du. All rights reserved.
//

#import "SecondViewController.h"
#import "UIColor+DCColor.h"
#import "CustomerTableViewCell.h"

@interface SecondViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.randomColor;
    
    self.navigationItem.prompt = @"第一种加载cell方式";
    self.navigationItem.title = @"创建集成于系统cell并带有xib文件";

    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    //  1. 自定义xib cell方式
    //  1.1 注册cell
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomerTableViewCell" bundle:nil] forCellReuseIdentifier:@"CustomerTableViewCell"];
    //  代码创建类时
    //  [self.tableView registerClass:[CustomerTableViewCell class] forCellReuseIdentifier:@"CustomerTableViewCell"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 1.2 通过标识获取cell
    CustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomerTableViewCell"];
    return cell;
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
