//
//  KDAppointMainCell.h
//  KDChat
//
//  Created by JYJ on 2019/4/30.
//  Copyright © 2019 dcjf. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class KDAppointModel;
@interface KDAppointMainCell : UITableViewCell
/** model */
@property (nonatomic, strong) KDAppointModel *model;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end

NS_ASSUME_NONNULL_END
