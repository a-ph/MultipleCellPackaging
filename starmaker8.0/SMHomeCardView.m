//
//  SMHomeContentView.m
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/30.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import "SMHomeCardView.h"
#import "UIColor+RandomColor.h"
#import "SMHomeConstDefine.h"
#import <Masonry.h>

@interface SMHomeCardView ()
@property (nonatomic, assign) SMHomeTableViewCellCardType homeTableViewCellCardType;//卡片类型
@property (nonatomic, assign) SMHomeTableViewCellContentType homeTableViewCellContentType;//转发或者原博类型
@property (nonatomic, strong) UILabel *desLabel;
@property (nonatomic, strong) SMHomeCardView *subContentView;//转发的子视图
@property (nonatomic, strong) UILabel *audioView;
@end

@implementation SMHomeCardView

+ (SMHomeCardView *)homeContentViewWithCardType:(SMHomeTableViewCellCardType)CardType contentType:(SMHomeTableViewCellContentType)contentType {
    return [[self alloc] initWithFrame:CGRectZero cardType:CardType contentType:contentType];
}

- (instancetype)initWithFrame:(CGRect)frame cardType:(SMHomeTableViewCellCardType)cardType contentType:(SMHomeTableViewCellContentType)contentType
{
    self = [super initWithFrame:frame];
    if (self) {
        _homeTableViewCellCardType = cardType;
        _homeTableViewCellContentType = contentType;
        [self initSubview];
    }
    return self;
}

- (void)initSubview {
    self.desLabel = UILabel.new;
    self.desLabel.text = @"des des des des des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des desdes des des";
    self.desLabel.backgroundColor = UIColor.randomColor;
    [self addSubview:self.desLabel];
    
    [self.desLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.leading.equalTo(self).offset(leftSpace);
        make.trailing.equalTo(self).offset(-leftSpace);
        make.height.equalTo(@(textHeight));
    }];
    
    switch (_homeTableViewCellContentType) {
        case SMHomeTableViewCellTypeContentOriginal:
            {
                switch (_homeTableViewCellCardType) {
                    case SMHomeTableViewCellCardTypeSingAudio:
                        {
                            self.audioView = UILabel.new;
                            self.audioView.backgroundColor = UIColor.randomColor;
                            self.audioView.text = @"audioView";
                            [self addSubview:self.audioView];
                            
                            [self.audioView mas_makeConstraints:^(MASConstraintMaker *make) {
                                make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
                                make.leading.equalTo(self).offset(leftSpace);
                                make.trailing.equalTo(self).offset(-leftSpace);
                                make.bottom.equalTo(self);
                                make.height.equalTo(@(singAudioHeight));
                            }];
                        }
                        break;
                    case SMHomeTableViewCellCardTypeSingVideo:
                    {
                            self.videoView = SMHomeSingVideoView.new;
                            self.videoView.backgroundColor = UIColor.randomColor;
                            [self addSubview:self.videoView];
                        
                            [self.videoView mas_makeConstraints:^(MASConstraintMaker *make) {
                                make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
                                make.leading.equalTo(self).offset(leftSpace);
                                make.bottom.equalTo(self);
                                make.height.equalTo(@(singVideoHeight));
                                make.width.equalTo(@(singVideoHeight-singAudioHeight));
                            }];
                    }
                        break;
                    case SMHomeTableViewCellCardTypeImage:
                    {
                        self.coverImageView = UIImageView.new;
                        self.coverImageView.backgroundColor = UIColor.randomColor;
                        [self addSubview:self.coverImageView];
                    
                        [self.coverImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
                            make.leading.trailing.equalTo(self);
                            make.bottom.equalTo(self);
                            make.height.equalTo(@(bigImageModeHeight));
                        }];
                    }
                        break;
                        
                    default:
                        break;
                }
            }
            break;
        case SMHomeTableViewCellTypeContentForward:
            {
                UIView *containerView = UIView.new;
                containerView.backgroundColor = UIColor.grayColor;
                [self addSubview:containerView];
                
                self.subContentView = [SMHomeCardView homeContentViewWithCardType:_homeTableViewCellCardType contentType:SMHomeTableViewCellTypeContentOriginal];
                [containerView addSubview:self.subContentView];
                
                CGFloat containerViewHeight = 0;
                switch (_homeTableViewCellCardType) {
                    case SMHomeTableViewCellCardTypeSingAudio:
                        containerViewHeight = topSpace*3+textHeight+singAudioHeight;
                        break;
                    case SMHomeTableViewCellCardTypeSingVideo:
                        containerViewHeight = topSpace*3+textHeight+singVideoHeight;
                        break;
                    case SMHomeTableViewCellCardTypeImage: {
                        containerViewHeight = topSpace*3+textHeight+bigImageModeHeight;
                        [self.subContentView.coverImageView mas_updateConstraints:^(MASConstraintMaker *make) {
                            make.leading.equalTo(self.subContentView).offset(leftSpace);
                            make.trailing.equalTo(self.subContentView).offset(-leftSpace);
                        }];
                    }
                        break;
                        
                    default:
                        break;
                }
                
                [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.leading.trailing.equalTo(self);
                    make.top.equalTo(self.desLabel.mas_bottom).offset(topSpace);
                    make.height.equalTo(@(containerViewHeight));
                }];
                [self.subContentView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.top.equalTo(containerView).offset(topSpace);
                    make.leading.equalTo(containerView).offset(0);
                    make.trailing.equalTo(containerView).offset(-0);
                    make.bottom.equalTo(containerView).offset(-topSpace);
                }];
                
            }
            break;
            
        default:
            break;
    }
}

@end
