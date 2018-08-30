//
//  SMHomeAudioTableViewCell.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/28.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "SMHomeAudioTableViewCell.h"
#import "SMHomeCardView.h"

@interface SMHomeAudioTableViewCell ()
@property (nonatomic, strong) UILabel *audioView;
@end

@implementation SMHomeAudioTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initSubview];
    }
    return self;
}

- (void)initSubview {
//    self.audioView = UILabel.new;
//    self.audioView.backgroundColor = UIColor.randomColor;
//    self.audioView.text = @"audioView";
//    [self.contentView addSubview:self.audioView];
//
//    [self.audioView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
//        make.leading.equalTo(self.contentView).offset(leftSpace);
//        make.trailing.equalTo(self.contentView).offset(-leftSpace);
//        make.bottom.equalTo(self.commentsBar.mas_top);
//        make.height.equalTo(@90);
//    }];
    self.cardView = [SMHomeCardView homeContentViewWithCardType:SMHomeTableViewCellCardTypeSingAudio contentType:SMHomeTableViewCellTypeContentOriginal];
    [self.contentView addSubview:self.cardView];
    
    [self.cardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userBar.mas_bottom);
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.commentsBar.mas_top);
    }];
}

@end
