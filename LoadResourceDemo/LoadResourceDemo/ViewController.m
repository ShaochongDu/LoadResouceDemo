//
//  ViewController.m
//  LoadResourceDemo
//
//  Created by SoDo on 2019/1/9.
//  Copyright © 2019 shaochong du. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "StoryBoardViewController.h"
#import "XibViewController.h"
#import "ThirdDemoViewController.h"
#import "SubView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)codePush:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

//  1. 创建集成于UIView的类
//  2. 创建视图 View (xib文件，同类名相同)
//  3. 设置xib关联创建的view类
- (IBAction)loadView:(id)sender {
    UIView *view = [self.view viewWithTag:1000];
    if (view) {
        [view removeFromSuperview];
        return;
    }
    SubView *subView = [[NSBundle mainBundle] loadNibNamed:@"SubView" owner:self options:nil].lastObject;
    subView.tag = 1000;
    subView.frame = CGRectMake(10, 300, 355, 100);
    [self.view addSubview:subView];
}

//  需要设置StroyBoard ID
- (IBAction)storyboardStyle:(id)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    StoryBoardViewController *storyVC = [story instantiateViewControllerWithIdentifier:@"StoryBoardViewController"];
    [self.navigationController pushViewController:storyVC animated:YES];
}

- (IBAction)xibStyle:(id)sender {
    XibViewController *xibVC = [[XibViewController alloc] initWithNibName:@"XibViewController" bundle:nil];
    [self.navigationController pushViewController:xibVC animated:YES];
}

- (IBAction)cellDemo:(id)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ThirdDemoViewController *storyVC = [story instantiateViewControllerWithIdentifier:@"ThirdDemoViewController"];
    [self.navigationController pushViewController:storyVC animated:YES];
}

@end
