//
//  SMHomeTableViewCell.m
//  StarMaker
//
//  Created by eaphyx on 2018/8/28.
//  Copyright © 2018年 uShow. All rights reserved.
//

#import "SMHomeBaseTableViewCell.h"

@interface SMHomeBaseTableViewCell ()

@end

@implementation SMHomeBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initSubView];
    }
    return self;
}

- (void)initSubView {
    self.userBar = [[UIView alloc] init];
    self.userBar.backgroundColor = UIColor.randomColor ;
    [self.contentView addSubview:self.userBar];
    
    self.commentsBar = UIView.new;
    self.commentsBar.backgroundColor = UIColor.randomColor;
    [self.contentView addSubview:self.commentsBar];
    
    [self.userBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.top.equalTo(self.contentView);
        make.height.equalTo(@50);
    }];
    
    [self.commentsBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.bottom.equalTo(self.contentView);
        make.height.equalTo(@50);
    }];
}

@end
