//
//  SMHomeContentView.h
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/30.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMHomeCellModel.h"
#import "SMHomeSingVideoView.h"

@interface SMHomeCardView : UIView

@property (nonatomic, strong) SMHomeSingVideoView *videoView;
@property (nonatomic, strong) UIImageView *coverImageView;

+ (SMHomeCardView *)homeContentViewWithCardType:(SMHomeTableViewCellCardType)CardType contentType:(SMHomeTableViewCellContentType)contentType;

@end
