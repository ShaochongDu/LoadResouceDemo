//
//  XibViewController.m
//  LoadResourceDemo
//
//  Created by SoDo on 2019/1/9.
//  Copyright © 2019 shaochong du. All rights reserved.
//

#import "XibViewController.h"

@interface XibViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation XibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.prompt = @"第二种加载cell方式";
    self.navigationItem.title = @"创建单独view文件多个cell";
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //  创建一个新的view  存放所有cell
    UITableViewCell * cell;
    if (indexPath.row % 2 == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"FirstTableViewCell"];
        if (cell == nil) {
            NSArray *xibArray = [[NSBundle mainBundle] loadNibNamed:@"TempTableViewCell" owner:self options:nil];
            cell = [xibArray objectAtIndex:1];
        }
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"SecondTCell"];
        if (cell == nil) {
            NSArray *xibArray = [[NSBundle mainBundle] loadNibNamed:@"TempTableViewCell" owner:self options:nil];
            cell = [xibArray objectAtIndex:2];
        }
    }
    
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
