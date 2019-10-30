//
//  KDAppointModel.h
//  KDChat
//
//  Created by JYJ on 2019/4/30.
//  Copyright © 2019 dcjf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KDAppointImagesModel : NSObject

@end

@interface KDAppointModel : NSObject

/** time */
@property (nonatomic, copy) NSString *time;
/** location */
@property (nonatomic, copy) NSString *location;
/** hope */
@property (nonatomic, copy) NSString *hope;
/** remarks */
@property (nonatomic, copy) NSString *remarks;
/** photos */
@property (nonatomic, strong) NSArray *photos;
@end

NS_ASSUME_NONNULL_END
