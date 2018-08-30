//
//  SMHomeCellModel.h
//  starmaker8.0
//
//  Created by eaphyx on 2018/8/29.
//  Copyright © 2018年 eaphyx. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 卡片类型
 */
typedef NS_ENUM(NSUInteger, SMHomeTableViewCellCardType) {
    SMHomeTableViewCellCardTypeSingAudio,//音频作品
    SMHomeTableViewCellCardTypeSingVideo,//视频作品
    SMHomeTableViewCellCardTypeImage,//图片
    SMHomeTableViewCellCardTypeText,//文字
    SMHomeTableViewCellCardTypeUserVideo,//用户上传的视频
};

/**
 转发\原博,类型
 */
typedef NS_ENUM(NSUInteger, SMHomeTableViewCellContentType) {
    SMHomeTableViewCellTypeContentOriginal,//原博
    SMHomeTableViewCellTypeContentForward,//转发
};

@interface SMHomeCellModel : NSObject

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, assign) NSInteger height;

@end
