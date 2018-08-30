//
//  SMHomeTableViewCell.h
//  StarMaker
//
//  Created by eaphyx on 2018/8/28.
//  Copyright © 2018年 uShow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+RandomColor.h"
#import <Masonry.h>
#import "SMHomeCellModel.h"
#import "SMHomeConstDefine.h"
#import "SMHomeCardView.h"

typedef void(^SMHomePlayAction)(id model, NSIndexPath *indexPath);
typedef void(^SMHomeSingAction)(id model, NSIndexPath *indexPath);
typedef void(^SMHomeDetailAction)(id model, NSIndexPath *indexPath);
typedef void(^SMHomeBigImageModeAction)(id model, NSIndexPath *indexPath);

@interface SMHomeBaseTableViewCell : UITableViewCell

@property (nonatomic, strong) UIView *userBar;
@property (nonatomic, strong) UIView *commentsBar;
@property (nonatomic, strong) SMHomeCardView *cardView;

//block 
@property (nonatomic, copy) SMHomePlayAction playAction;
@property (nonatomic, copy) SMHomeSingAction singAction;
@property (nonatomic, copy) SMHomeDetailAction detailAction;
@property (nonatomic, copy) SMHomeBigImageModeAction bigImageModeAction;

@end
