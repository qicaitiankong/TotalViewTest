//
//  ViewController.m
//  ViewTest
//
//  Created by Lizihao Li on 2020/8/14.
//  Copyright © 2020 Lizihao Li. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "FirstTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong,nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addViews];
}

- (void)addViews
{
    
    UIImageView *targetImageView = [[UIImageView alloc]init];
    targetImageView.backgroundColor = [UIColor whiteColor];
    targetImageView.image = [UIImage imageNamed:@"dogFoot"];
    [self.view addSubview:targetImageView];
    //
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.showsVerticalScrollIndicator = YES;
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.left.right.mas_equalTo(self.view);
        make.top.bottom.mas_equalTo(self.view);
    }];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 80;
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellFlag = @"cell";
    FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellFlag];
    if (nil == cell)
    {
        cell = [[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellFlag];
    }
    cell.centerLabel.text = @"一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，一生回味一面小鱼儿，";
    [cell updateOwnCellDisplay];
    return cell;
}


-(UITableView *)tableView
{
    if (_tableView == nil)
    {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    }
    return _tableView;;
}

@end
