//
//  SMHomeSingVideoView.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/29.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "SMHomeSingVideoView.h"
#import "UIColor+RandomColor.h"
#import <Masonry.h>

@interface SMHomeSingVideoView ()
@property (nonatomic, strong) UIImageView *coverIV;
@property (nonatomic, strong) UIButton *playButton;
@property (nonatomic, strong) UILabel *songNameLabel;
@property (nonatomic, strong) UILabel *playTimesLabel;
@property (nonatomic, strong) UIImageView *chorusPeopleView;
@property (nonatomic, strong) UIButton *singButton;
@end

@implementation SMHomeSingVideoView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubview];
    }
    return self;
}

- (void)initSubview {
    self.coverIV = UIImageView.new;
    self.coverIV.backgroundColor = UIColor.randomColor;
    [self addSubview:self.coverIV];
    
    self.playButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.playButton.backgroundColor = UIColor.randomColor;
    [self.playButton addTarget:self action:@selector(playAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.playButton];
    
    self.songNameLabel = UILabel.new;
    self.songNameLabel.text = @"songname";
    self.songNameLabel.backgroundColor = UIColor.randomColor;
    [self addSubview:self.songNameLabel];
    
    self.playTimesLabel = UILabel.new;
    self.playTimesLabel.text = @"100 plays";
    self.playTimesLabel.backgroundColor = UIColor.randomColor;
    [self addSubview:self.playTimesLabel];
    
    self.chorusPeopleView = UIImageView.new;
    self.chorusPeopleView.backgroundColor = UIColor.randomColor;
    [self addSubview:self.chorusPeopleView];
    
    self.singButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.singButton.backgroundColor = UIColor.randomColor;
    [self addSubview:self.singButton];
    
    [self.coverIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.trailing.equalTo(self);
        make.height.equalTo(self.mas_width);
    }];
    
    [self.playButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.coverIV);
        make.height.width.equalTo(@55);
    }];
    
    [self.singButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.trailing.equalTo(self).offset(-9);
        make.width.equalTo(@60);
        make.height.equalTo(@24);
    }];
}

- (void)playAction:(UIButton *)sender {
    if (self.play) {
        self.play(nil);
    }
}

@end
