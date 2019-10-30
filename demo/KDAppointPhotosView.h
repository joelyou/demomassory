//
//  KDAppointPhotosView.h
//  KDChat
//
//  Created by JYJ on 2019/4/30.
//  Copyright © 2019 dcjf. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KDAppointPhotosView : UIView
/**
 *  图片数据（里面都是JYJPhoto模型）
 */
@property (nonatomic, strong) NSArray *pic_urls;
/**
 *  根据图片的个数计算相册的最终尺寸
 */
+ (CGSize)sizeWithPhotosCount:(int)count;
@end

NS_ASSUME_NONNULL_END
