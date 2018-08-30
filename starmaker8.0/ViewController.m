//
//  ViewController.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/28.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "ViewController.h"
#import "SMHomeBaseTableViewCell.h"
#import "SMHomeAudioTableViewCell.h"
#import "SMHomeVideoTableViewCell.h"
#import "SMHomeImageTableViewCell.h"
#import "SMHomeForwardAudioTableViewCell.h"
#import "SMHomeForwardVideoTableViewCell.h"
#import "SMHomeForwardImageTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:SMHomeAudioTableViewCell.class forCellReuseIdentifier:@"SMHomeAudioTableViewCell"];
    [self.tableView registerClass:SMHomeVideoTableViewCell.class forCellReuseIdentifier:@"SMHomeVideoTableViewCell"];
    [self.tableView registerClass:SMHomeImageTableViewCell.class forCellReuseIdentifier:@"SMHomeImageTableViewCell"];
    [self.tableView registerClass:SMHomeForwardAudioTableViewCell.class forCellReuseIdentifier:@"SMHomeForwardAudioTableViewCell"];
    [self.tableView registerClass:SMHomeForwardVideoTableViewCell.class forCellReuseIdentifier:@"SMHomeForwardVideoTableViewCell"];
    [self.tableView registerClass:SMHomeForwardImageTableViewCell.class forCellReuseIdentifier:@"SMHomeForwardImageTableViewCell"];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}


#pragma mark - cell ActionHandle

- (void)cellActionHandle:(SMHomeBaseTableViewCell *)cell {
    cell.cardView.videoView.play = ^(id model) {
        NSLog(@"play");
    };
}

#pragma mark -
#pragma mark UITableViewDataSource

// 列表Row个数
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return 12;
}

// 列表Sections个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// 初始化cell
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SMHomeBaseTableViewCell *cell = nil;
    
    switch (indexPath.row%6) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"SMHomeAudioTableViewCell"];
            break;
        case 1:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"SMHomeVideoTableViewCell"];
        }
            break;
        case 2:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"SMHomeImageTableViewCell"];
        }
            break;
        case 3:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"SMHomeForwardAudioTableViewCell"];
        }
            break;
        case 4:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"SMHomeForwardVideoTableViewCell"];
        }
            break;
        case 5:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"SMHomeForwardImageTableViewCell"];
        }
            break;
        default:
            break;
    }
    
    [self cellActionHandle:cell];
    
    return cell;
}

#pragma mark -
#pragma mark UITableViewDelegate

// 列表高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row%6) {
        case 0:
            return userBarHeight+commentsBarHeight+textHeight+topSpace+singAudioHeight;
            break;
        case 1:
            return userBarHeight+commentsBarHeight+textHeight+topSpace+singVideoHeight;
            break;
        case 2:
            return userBarHeight+commentsBarHeight+textHeight+topSpace+bigImageModeHeight;
            break;
        case 3:
            return userBarHeight+commentsBarHeight+textHeight+topSpace*4+singAudioHeight+textHeight;
            break;
        case 4:
            return userBarHeight+commentsBarHeight+textHeight+topSpace*4+singVideoHeight+textHeight;
            break;
        case 5:
            return userBarHeight+commentsBarHeight+textHeight+topSpace*4+bigImageModeHeight+textHeight;
            break;
            
        default:
            break;
    }
    return 0.01;
}

// 选中cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
