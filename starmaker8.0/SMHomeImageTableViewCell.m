//
//  SMHomeImageTableViewCell.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/29.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "SMHomeImageTableViewCell.h"

@interface SMHomeImageTableViewCell ()
@property (nonatomic, strong) UIImageView *coverImageView;
@end

@implementation SMHomeImageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initSubview];
    }
    return self;
}

- (void)initSubview {
//    self.coverImageView = UIImageView.new;
//    self.coverImageView.backgroundColor = UIColor.randomColor;
//    [self.contentView addSubview:self.coverImageView];
//
//    [self.coverImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
//        make.leading.trailing.equalTo(self.contentView);
//        make.bottom.equalTo(self.commentsBar.mas_top);
//        make.height.equalTo(@456);
//    }];
    self.cardView = [SMHomeCardView homeContentViewWithCardType:SMHomeTableViewCellCardTypeImage contentType:SMHomeTableViewCellTypeContentOriginal];
    [self.contentView addSubview:self.cardView];
    
    [self.cardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userBar.mas_bottom);
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.commentsBar.mas_top);
    }];
}

@end
