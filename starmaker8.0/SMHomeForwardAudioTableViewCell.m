//
//  SMHomeForwardAudioTableViewCell.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/29.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "SMHomeForwardAudioTableViewCell.h"

@interface SMHomeForwardAudioTableViewCell ()

@end

@implementation SMHomeForwardAudioTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initSubview];
    }
    return self;
}

- (void)initSubview {
    self.cardView = [SMHomeCardView homeContentViewWithCardType:SMHomeTableViewCellCardTypeSingAudio contentType:SMHomeTableViewCellTypeContentForward];
    [self.contentView addSubview:self.cardView];
    
    [self.cardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userBar.mas_bottom);
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.commentsBar.mas_top);
    }];
}

@end
