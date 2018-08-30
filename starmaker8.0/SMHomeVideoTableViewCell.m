//
//  SMHomeVideoTableViewCell.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/28.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "SMHomeVideoTableViewCell.h"
#import "SMHomeSingVideoView.h"

@interface SMHomeVideoTableViewCell ()
@property (nonatomic, strong) SMHomeSingVideoView *videoView;
@end

@implementation SMHomeVideoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initSubview];
    }
    return self;
}

- (void)initSubview {
//    self.videoView = SMHomeSingVideoView.new;
//    self.videoView.backgroundColor = UIColor.randomColor;
//    [self.contentView addSubview:self.videoView];
//
//    [self.videoView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
//        make.leading.equalTo(self.contentView).offset(leftSpace);
//        make.bottom.equalTo(self.commentsBar.mas_top);
//        make.height.equalTo(@(237+90));
//        make.width.equalTo(@(237));
//    }];
    self.cardView = [SMHomeCardView homeContentViewWithCardType:SMHomeTableViewCellCardTypeSingVideo contentType:SMHomeTableViewCellTypeContentOriginal];
    [self.contentView addSubview:self.cardView];
    
    [self.cardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userBar.mas_bottom);
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.commentsBar.mas_top);
    }];
}

@end
