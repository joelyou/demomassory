//
//  KDAppointMainCell.m
//  KDChat
//
//  Created by JYJ on 2019/4/30.
//  Copyright © 2019 dcjf. All rights reserved.
//

#import "KDAppointMainCell.h"
#import "KDAppointPhotosView.h"
#import "KDAppointModel.h"
#import "Masonry/Masonry.h"
#import "UILabel+Extension.h"
#import "UIButton+Extension.m"
#import "UIColor+Hex.h"

#define KDScreenW [UIScreen mainScreen].bounds.size.width
#define KDScreenH [UIScreen mainScreen].bounds.size.height
#define KDRadius KDScreenW / 375.0
#define KDRate(x) (x) * KDRadius

@interface KDAppointMainCell ()
/** bgView */
@property (nonatomic, strong) UIView *bgView;
/** userIcon */
@property (nonatomic, strong) UIImageView *userIcon;
/** nameLabel */
@property (nonatomic, strong) UILabel *nameLabel;
/** sexIcon */
@property (nonatomic, strong) UIImageView *sexIcon;
/** vipIcon */
@property (nonatomic, strong) UIImageView *vipIcon;

/** publishTimeLabel */
@property (nonatomic, strong) UILabel *publishTimeLabel;
/** reportBtn */
@property (nonatomic, strong) UIButton *reportBtn;
/** tipBtn */
@property (nonatomic, strong) UIButton *tipBtn;
/** topLine */
@property (nonatomic, strong) UIView *topLine;

/** themeLabel */
@property (nonatomic, strong) UILabel *themeLabel;

/** timeIcon */
@property (nonatomic, strong) UIImageView *timeIcon;
/** timeLabel */
@property (nonatomic, strong) UILabel *timeLabel;

/** locationIcon */
@property (nonatomic, strong) UIImageView *locationIcon;
/** locationLabel */
@property (nonatomic, strong) UILabel *locationLabel;

/** hopeIcon */
@property (nonatomic, strong) UIImageView *hopeIcon;
/** hopeLabel */
@property (nonatomic, strong) UILabel *hopeLabel;

/** remarksIcon */
@property (nonatomic, strong) UIImageView *remarksIcon;
/** remarksLabel */
@property (nonatomic, strong) UILabel *remarksLabel;

/** photosView */
@property (nonatomic, strong) KDAppointPhotosView *photosView;

/** bottomLine */
@property (nonatomic, strong) UIView *bottomLine;

/** goodBtn */
@property (nonatomic, strong) UIButton *goodBtn;
///** goodIcon */
//@property (nonatomic, strong) UIImageView *goodIcon;
///** goodLabel */
//@property (nonatomic, strong) UILabel *goodLabel;

/** commentBtn */
@property (nonatomic, strong) UIButton *commentBtn;
///** commentIcon */
//@property (nonatomic, strong) UIImageView *commentIcon;
///** commentLabel */
//@property (nonatomic, strong) UILabel *commentLabel;

/** lookBtn */
@property (nonatomic, strong) UIButton *lookBtn;
///** lookIcon */
//@property (nonatomic, strong) UIImageView *lookIcon;
///** lookLabel */
//@property (nonatomic, strong) UILabel *lookLabel;

/** closeBtn */
@property (nonatomic, strong) UIButton *closeBtn;
///** closeIcon */
//@property (nonatomic, strong) UIImageView *closeIcon;
///** closeLabel */
//@property (nonatomic, strong) UILabel *closeLabel;

/** closeBtn */
@property (nonatomic, strong) UIButton *signUpBtn;
///** signUpIcon */
//@property (nonatomic, strong) UIImageView *signUpIcon;
///** signUpLabel */
//@property (nonatomic, strong) UILabel *signUpLabel;

@end

@implementation KDAppointMainCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    // 创建cell
    static NSString *ID = @"KDHomeCell";
    KDAppointMainCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[KDAppointMainCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    cell.backgroundColor = [UIColor grayColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // 初始化操作
    [self setupSubviews];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 初始化操作
        [self setupSubviews];
        
    }
    return self;
}


- (void)setupSubviews {
    [self.contentView addSubview:self.bgView];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(15));
        make.right.equalTo(self.contentView.mas_right).offset(KDRate(-15));
        make.top.equalTo(self.contentView.mas_top).offset(KDRate(5));
        make.bottom.equalTo(self.contentView);
    }];

    [self.bgView addSubview:self.userIcon];
    [self.userIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(15);
        make.width.height.mas_equalTo(KDRate(25));
    }];
//    self.userIcon.cornerRadius = KDRate(25) / 2;
    
    [self.bgView addSubview:self.nameLabel];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.userIcon.mas_right).offset(KDRate(10));
        make.height.mas_equalTo(KDRate(21));
        make.centerY.equalTo(self.userIcon.mas_centerY);
    }];
    
    [self.bgView addSubview:self.sexIcon];
    [self.sexIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.nameLabel.mas_right).offset(KDRate(5));
        make.width.mas_equalTo(KDRate(7));
        make.height.mas_equalTo(KDRate(10));
        make.centerY.equalTo(self.nameLabel.mas_centerY);
    }];
    
    [self.bgView addSubview:self.vipIcon];
    [self.vipIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.sexIcon.mas_right).offset(KDRate(5));
        make.width.mas_equalTo(KDRate(9));
        make.height.mas_equalTo(KDRate(10));
        make.centerY.equalTo(self.nameLabel.mas_centerY);
    }];
    
    
    [self.bgView addSubview:self.reportBtn];
    [self.reportBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.width.mas_equalTo(KDRate(15));
        make.height.mas_equalTo(KDRate(15));
        make.centerY.equalTo(self.nameLabel.mas_centerY);
    }];
    
    [self.bgView addSubview:self.tipBtn];
    [self.tipBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(KDRate(54));
        make.height.mas_equalTo(KDRate(25));
        make.top.equalTo(self.reportBtn.mas_bottom).offset(KDRate(5));
        make.right.equalTo(self.reportBtn.mas_right);
    }];
    [self.bgView bringSubviewToFront:self.tipBtn];
    
    [self.bgView addSubview:self.publishTimeLabel];
    [self.publishTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.reportBtn.mas_left).offset(KDRate(-15));
        make.height.mas_equalTo(KDRate(15));
        make.centerY.equalTo(self.nameLabel.mas_centerY);
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15)).priority(200);
    }];
     
    [self.bgView addSubview:self.topLine];
    [self.topLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(15));
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.height.mas_equalTo(0.8);
        make.top.mas_equalTo(KDRate(50));
    }];
    
    [self.bgView addSubview:self.themeLabel];
    [self.themeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(15));
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.top.equalTo(self.topLine.mas_bottom).offset(KDRate(15));
    }];
    
    
    [self.bgView addSubview:self.timeLabel];
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(47));
        make.height.mas_equalTo(KDRate(20));
        make.top.equalTo(self.themeLabel.mas_bottom).offset(KDRate(10));
    }];

    [self.bgView addSubview:self.timeIcon];
    [self.timeIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.timeLabel.mas_left).offset(KDRate(-5));
        make.width.mas_equalTo(KDRate(12));
        make.height.mas_equalTo(KDRate(12));
        make.centerY.equalTo(self.timeLabel.mas_centerY);
    }];

    [self.bgView addSubview:self.locationLabel];
    [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.height.equalTo(self.timeLabel);
        make.top.equalTo(self.timeLabel.mas_bottom).offset(KDRate(5));
    }];

    [self.bgView addSubview:self.locationIcon];
    [self.locationIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.width.height.equalTo(self.timeIcon);
        make.centerY.equalTo(self.locationLabel.mas_centerY);
    }];

    [self.bgView addSubview:self.hopeLabel];
    [self.hopeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.height.equalTo(self.timeLabel);
        make.top.equalTo(self.locationLabel.mas_bottom).offset(KDRate(5));
    }];

    [self.bgView addSubview:self.hopeIcon];
    [self.hopeIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.width.height.equalTo(self.timeIcon);
        make.centerY.equalTo(self.hopeLabel.mas_centerY);
    }];

    [self.bgView addSubview:self.remarksLabel];
    [self.remarksLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.timeLabel);
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.height.mas_greaterThanOrEqualTo(KDRate(20));
        make.top.equalTo(self.hopeLabel.mas_bottom).offset(KDRate(5));
    }];
    
    [self.bgView addSubview:self.remarksIcon];
    [self.remarksIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.width.height.equalTo(self.timeIcon);
        make.top.equalTo(self.remarksLabel.mas_top).offset(KDRate(3));
    }];

    [self.bgView addSubview:self.photosView];
    [self.photosView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(15));
        make.height.mas_equalTo(KDRate(101.5));
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.top.equalTo(self.remarksLabel.mas_bottom).offset(KDRate(10));
    }];

    [self.bgView addSubview:self.bottomLine];
    [self.bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(15));
        make.height.mas_equalTo(0.8);
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.top.equalTo(self.photosView.mas_bottom).offset(KDRate(15));
    }];

    [self.bgView addSubview:self.goodBtn];
    [self.goodBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(KDRate(15));
        make.height.mas_equalTo(KDRate(19));
        make.width.mas_equalTo(KDRate(65));
        make.top.equalTo(self.bottomLine.mas_bottom).offset(KDRate(15));
        make.bottom.equalTo(self.bgView.mas_bottom).offset(KDRate(-16)).priorityLow();
    }];

    [self.bgView addSubview:self.commentBtn];
    [self.commentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.goodBtn.mas_right);
        make.height.top.equalTo(self.goodBtn);
        make.width.mas_equalTo(KDRate(90));
    }];

    [self.bgView addSubview:self.closeBtn];
    [self.closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.height.top.equalTo(self.goodBtn);
        make.width.mas_equalTo(KDRate(50));
    }];

    [self.bgView addSubview:self.lookBtn];
    [self.lookBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.closeBtn.mas_left).offset(KDRate(-15));
        make.height.top.equalTo(self.goodBtn);
        make.width.mas_equalTo(KDRate(70));
    }];

    [self.bgView addSubview:self.signUpBtn];
    [self.signUpBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView.mas_right).offset(KDRate(-15));
        make.height.top.equalTo(self.goodBtn);
        make.width.mas_equalTo(KDRate(95));
    }];
}

- (void)setModel:(KDAppointModel *)model {
    _model = model;

    self.timeLabel.text = _model.time;
    self.locationLabel.text = _model.location;
    self.hopeLabel.text = _model.hope;
    self.remarksLabel.text = _model.remarks;
    
    MASViewAttribute *lastAttr = self.locationLabel.mas_bottom;
    
    if (model.hope.length == 0) {
        self.hopeLabel.hidden = YES;
        self.hopeIcon.hidden = YES;
    } else {
        self.hopeLabel.hidden = NO;
        self.hopeIcon.hidden = NO;
        
        [self removeAttribute:NSLayoutAttributeTop forView:self.hopeLabel];
        
        [self.hopeLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.height.equalTo(self.timeLabel);
            make.top.equalTo(lastAttr).offset(KDRate(5));
        }];
        [self.bgView addSubview:self.hopeIcon];
        [self.hopeIcon mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.width.height.equalTo(self.timeIcon);
            make.centerY.equalTo(self.hopeLabel.mas_centerY);
        }];
        
        lastAttr = self.hopeLabel.mas_bottom;
    }

    if (model.remarks.length == 0) {
        self.remarksLabel.hidden = YES;
        self.remarksIcon.hidden = YES;
    } else {
        self.remarksLabel.hidden = NO;
        self.remarksIcon.hidden = NO;
        
        [self removeAttribute:NSLayoutAttributeTop forView:self.remarksLabel];
        
        [self.remarksLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(lastAttr).offset(KDRate(5));
        }];
        
        lastAttr = self.remarksLabel.mas_bottom;
    }

    if (model.photos.count == 0) {
        self.photosView.hidden = YES;
    } else {
        self.photosView.hidden = NO;
        
        [self removeAttribute:NSLayoutAttributeTop forView:self.photosView];
        
        if (model.photos.count <= 3) {
            [self.photosView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(KDRate(101.5));
                
                make.top.equalTo(lastAttr).offset(KDRate(10));
            }];
        } else if (model.photos.count <= 6) {
            [self.photosView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(KDRate(101.5) * 2 + KDRate(5));
                
                make.top.equalTo(lastAttr).offset(KDRate(10));
            }];
        } else {
            [self.photosView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(KDRate(101.5) * 3 + KDRate(5) * 2);
                
                make.top.equalTo(lastAttr).offset(KDRate(10));
            }];
        }
        
        lastAttr = self.photosView.mas_bottom;
    }
    
    [self removeAttribute:NSLayoutAttributeTop forView:self.bottomLine];
    
    [self.bottomLine mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lastAttr).offset(KDRate(15));
    }];
    
    [self.contentView layoutIfNeeded];
}

- (void)removeAttribute:(NSLayoutAttribute)layoutAttr forView:(UIView *)view
{
    NSArray *installedConstraints = [MASViewConstraint installedConstraintsForView:view];
    
    [installedConstraints enumerateObjectsUsingBlock:^(MASViewConstraint * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.firstViewAttribute.layoutAttribute == layoutAttr) {
            [obj uninstall];
            *stop = YES;
        }
    }];
}


/**
 *  弹出举报
 */
- (void)reportBtnClick {
    
}

/**
 *  tipBtnClick
 */
- (void)tipBtnClick {
    
}

/**
 *  点赞
 */
- (void)goodBtnClick {
    
}

/**
 *  评论
 */
- (void)commentBtnClick {
    
}

/**
 *  查看报名
 */
- (void)lookBtnClick {
    
}

/**
 *  结束报名
 */
- (void)closeBtnClick {
    
}

/**
 *  报名
 */
- (void)signUpBtnClick {
    
}

- (UIView *)bgView {
    if (!_bgView) {
        UIView *bgView = [[UIView alloc] init];
        bgView.backgroundColor = [UIColor whiteColor];
        self.bgView = bgView;
    }
    return _bgView;
}


/** userIcon */
- (UIImageView *)userIcon {
    if (!_userIcon) {
        UIImageView *userIcon = [[UIImageView alloc] init];
        userIcon.image = [UIImage imageNamed:@"profile_userIcon_man"];
        self.userIcon = userIcon;
    }
    return _userIcon;
}

/** nameLabel */
- (UILabel *)nameLabel {
    if (!_nameLabel) {
        /** nameLabel */
        UILabel *nameLabel = [UILabel labelWithTitle:@"兑换商品" color:[UIColor colorWithHexString:@"070707"] font:[UIFont systemFontOfSize:KDRate(14)]];
        nameLabel.textAlignment = NSTextAlignmentLeft;
        self.nameLabel = nameLabel;
    }
    return _nameLabel;
}


/** vipIcon */
- (UIImageView *)vipIcon {
    if (!_vipIcon) {
        UIImageView *vipIcon = [[UIImageView alloc] init];
        vipIcon.image = [UIImage imageNamed:@"home_icon_vip"];
        vipIcon.hidden = NO;
        self.vipIcon = vipIcon;
    }
    return _vipIcon;
}

/** sexIcon */
- (UIImageView *)sexIcon {
    if (!_sexIcon) {
        UIImageView *sexIcon = [[UIImageView alloc] init];
        sexIcon.image = [UIImage imageNamed:@"profile_icon_sexMan"];
        self.sexIcon = sexIcon;
    }
    return _sexIcon;
}

/** publishTimeLabel */
- (UILabel *)publishTimeLabel {
    if (!_publishTimeLabel) {
        UILabel *publishTimeLabel = [UILabel labelWithTitle:@"2019/03/04 08:42 发布" color:[UIColor colorWithHexString:@"9E9EA4"] font:[UIFont systemFontOfSize:KDRate(11)]];
        self.publishTimeLabel = publishTimeLabel;
    }
    return _publishTimeLabel;
}

/** reportBtn */
- (UIButton *)reportBtn {
    if (!_reportBtn) {
        UIButton *reportBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(reportBtnClick)];
        [reportBtn setImage:[UIImage imageNamed:@"appoint_icon_report"] forState:UIControlStateNormal];
        self.reportBtn = reportBtn;
    }
    return _reportBtn;
}

/** tipBtn */
- (UIButton *)tipBtn {
    if (!_tipBtn) {
        UIButton *tipBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(tipBtnClick)];
        [tipBtn setImage:[UIImage imageNamed:@"appoint_icon_report"] forState:UIControlStateNormal];
        tipBtn.titleEdgeInsets = UIEdgeInsetsMake(KDRate(2.5), 0, 0, 0);
        self.tipBtn = tipBtn;
    }
    return _tipBtn;
}

/** topLine */
- (UIView *)topLine {
    if (!_topLine) {
        UIView *topLine = [[UIView alloc] init];
        topLine.backgroundColor = [UIColor colorWithHexString:@"F2F2F2"];
        self.topLine = topLine;
    }
    return _topLine;
}

/** themeLabel */
- (UILabel *)themeLabel {
    if (!_themeLabel) {
        
        UILabel *themeLabel = [UILabel labelWithTitle:@"吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝吃吃喝喝" color:[UIColor colorWithHexString:@"3E3D3D"] font:[UIFont systemFontOfSize:KDRate(17)]];
        themeLabel.numberOfLines = 0;
        themeLabel.textAlignment = NSTextAlignmentLeft;
        self.themeLabel = themeLabel;
    }
    return _themeLabel;
}

/** timeIcon */
- (UIImageView *)timeIcon {
    if (!_timeIcon) {
        UIImageView *timeIcon = [[UIImageView alloc] init];
        timeIcon.image = [UIImage imageNamed:@"appoint_icon_time"];
        self.timeIcon = timeIcon;
    }
    return _timeIcon;
}


/** timeLabel */
- (UILabel *)timeLabel {
    if (!_timeLabel) {
        UILabel *timeLabel = [UILabel labelWithTitle:@"04/29晚上" color:[UIColor colorWithHexString:@"3E3D3D"] font:[UIFont systemFontOfSize:KDRate(14)]];
        self.timeLabel = timeLabel;
    }
    return _timeLabel;
}

/** locationIcon */
- (UIImageView *)locationIcon {
    if (!_locationIcon) {
        UIImageView *locationIcon = [[UIImageView alloc] init];
        locationIcon.image = [UIImage imageNamed:@"appoint_icon_location"];
        self.locationIcon = locationIcon;
    }
    return _locationIcon;
}

/** locationLabel */
- (UILabel *)locationLabel {
    if (!_locationLabel) {
        UILabel *locationLabel = [UILabel labelWithTitle:@"上海市" color:[UIColor colorWithHexString:@"3E3D3D"] font:[UIFont systemFontOfSize:KDRate(14)]];
        self.locationLabel = locationLabel;
    }
    return _locationLabel;
}

/** hopeIcon */
- (UIImageView *)hopeIcon {
    if (!_hopeIcon) {
        UIImageView *hopeIcon = [[UIImageView alloc] init];
        hopeIcon.image = [UIImage imageNamed:@"appoint_icon_hope"];
        self.hopeIcon = hopeIcon;
    }
    return _hopeIcon;
}

/** hopeLabel */
- (UILabel *)hopeLabel {
    if (!_hopeLabel) {
        UILabel *hopeLabel = [UILabel labelWithTitle:@"约会期望：看脸/有趣" color:[UIColor colorWithHexString:@"3E3D3D"] font:[UIFont systemFontOfSize:KDRate(14)]];
        self.hopeLabel = hopeLabel;
    }
    return _hopeLabel;
}

/** remarksIcon */
- (UIImageView *)remarksIcon {
    if (!_remarksIcon) {
        UIImageView *remarksIcon = [[UIImageView alloc] init];
        remarksIcon.image = [UIImage imageNamed:@"appoint_icon_remarks"];
        self.remarksIcon = remarksIcon;
    }
    return _remarksIcon;
}
/** remarksLabel */
- (UILabel *)remarksLabel {
    if (!_remarksLabel) {
        UILabel *remarksLabel = [UILabel labelWithTitle:@"聊天吃饭聊" color:[UIColor colorWithHexString:@"9E9EA4"] font:[UIFont systemFontOfSize:KDRate(14)]];
        remarksLabel.textAlignment = NSTextAlignmentLeft;
        remarksLabel.numberOfLines = 0;
        self.remarksLabel = remarksLabel;
    }
    return _remarksLabel;
}

/** photosView */
- (KDAppointPhotosView *)photosView {
    if (!_photosView) {
        KDAppointPhotosView *photosView = [[KDAppointPhotosView alloc] init];
        photosView.backgroundColor = [UIColor colorWithHexString:@"EEEEEE"];
        self.photosView = photosView;
    }
    return _photosView;
}

/** bottomLine */
- (UIView *)bottomLine {
    if (!_bottomLine) {
        UIView *bottomLine = [[UIView alloc] init];
        bottomLine.backgroundColor = [UIColor colorWithHexString:@"F2F2F2"];
        self.bottomLine = bottomLine;
    }
    return _bottomLine;
}

///** goodIcon */
//- (UIImageView *)goodIcon {
//    if (!_goodIcon) {
//        UIImageView *goodIcon = [[UIImageView alloc] init];
//        goodIcon.image = [UIImage imageNamed:@"appoint_icon_remarks"];
//        self.goodIcon = goodIcon;
//    }
//    return _goodIcon;
//}
//
///** goodLabel */
//- (UILabel *)goodLabel {
//    if (!_goodLabel) {
//        UILabel *goodLabel = [UILabel labelWithTitle:@"点赞" color:[UIColor colorWithHexString:@"666666"] font:[UIFont systemFontOfSize:KDRate(13)]];
//        self.goodLabel = goodLabel;
//    }
//    return _goodLabel;
//}
//
///** commentIcon */
//- (UIImageView *)commentIcon {
//    if (!_commentIcon) {
//        UIImageView *commentIcon = [[UIImageView alloc] init];
//        commentIcon.image = [UIImage imageNamed:@"appoint_icon_remarks"];
//        self.commentIcon = commentIcon;
//    }
//    return _commentIcon;
//}
//
///** commentLabel */
//- (UILabel *)commentLabel {
//    if (!_commentLabel) {
//        UILabel *commentLabel = [UILabel labelWithTitle:@"评论" color:[UIColor colorWithHexString:@"666666"] font:[UIFont systemFontOfSize:KDRate(13)]];
//        self.commentLabel = commentLabel;
//    }
//    return _commentLabel;
//}
//
///** lookIcon */
//- (UIImageView *)lookIcon {
//    if (!_lookIcon) {
//        UIImageView *lookIcon = [[UIImageView alloc] init];
//        lookIcon.image = [UIImage imageNamed:@"appoint_icon_remarks"];
//        self.lookIcon = lookIcon;
//    }
//    return _lookIcon;
//}
//
///** lookLabel */
//- (UILabel *)lookLabel {
//    if (!_lookLabel) {
//        UILabel *lookLabel = [UILabel labelWithTitle:@"查看报名(6)" color:[UIColor colorWithHexString:@"161618"] font:[UIFont systemFontOfSize:KDRate(13)]];
//        self.lookLabel = lookLabel;
//    }
//    return _lookLabel;
//}
//
///** closeIcon */
//- (UIImageView *)closeIcon {
//    if (!_closeIcon) {
//        UIImageView *closeIcon = [[UIImageView alloc] init];
//        closeIcon.image = [UIImage imageNamed:@"appoint_icon_remarks"];
//        self.closeIcon = closeIcon;
//    }
//    return _closeIcon;
//}
///** closeLabel */
//- (UILabel *)closeLabel {
//    if (!_closeLabel) {
//        UILabel *closeLabel = [UILabel labelWithTitle:@"查看报名(6)" color:[UIColor colorWithHexString:@"161618"] font:[UIFont systemFontOfSize:KDRate(13)]];
//        self.closeLabel = closeLabel;
//    }
//    return _closeLabell;
//}
//
///** signUpIcon */
//- (UIImageView *)signUpIcon {
//    if (!_signUpIcon) {
//        UIImageView *signUpIcon = [[UIImageView alloc] init];
//        signUpIcon.image = [UIImage imageNamed:@"appoint_icon_remarks"];
//        self.signUpIcon = signUpIcon;
//    }
//    return _signUpIcon;
//}
//
///** signUpLabel */
//- (UILabel *)signUpLabel {
//    if (!_signUpLabel) {
//        UILabel *signUpLabel = [UILabel labelWithTitle:@"查看报名(6)" color:[UIColor colorWithHexString:@"161618"] font:[UIFont systemFontOfSize:KDRate(13)]];
//        self.signUpLabel = signUpLabel;
//    }
//    return _signUpLabel;
//}


/** goodBtn */
- (UIButton *)goodBtn {
    if (!_goodBtn) {
        UIButton *goodBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(goodBtnClick)];
        [goodBtn setImage:[UIImage imageNamed:@"appoint_icon_noGood"] forState:UIControlStateNormal];
        [goodBtn setImage:[UIImage imageNamed:@"appoint_icon_good"] forState:UIControlStateDisabled];
        goodBtn.adjustsImageWhenHighlighted = NO;
        goodBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.goodBtn = goodBtn;
    }
    return _goodBtn;
}


/** commentBtn */
- (UIButton *)commentBtn {
    if (!_commentBtn) {
        UIButton *commentBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(commentBtnClick)];
        [commentBtn setImage:[UIImage imageNamed:@"appoint_icon_noComment"] forState:UIControlStateNormal];
        [commentBtn setImage:[UIImage imageNamed:@"appoint_icon_comment"] forState:UIControlStateDisabled];
        commentBtn.adjustsImageWhenHighlighted = NO;
        commentBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.commentBtn = commentBtn;
    }
    return _commentBtn;
}

/** lookBtn */
- (UIButton *)lookBtn {
    if (!_lookBtn) {
        UIButton *lookBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(lookBtnClick)];
        [lookBtn setImage:[UIImage imageNamed:@"appoint_icon_look"] forState:UIControlStateNormal];
        [lookBtn setImage:[UIImage imageNamed:@"appoint_icon_overLook"] forState:UIControlStateDisabled];
        lookBtn.adjustsImageWhenHighlighted = NO;
        lookBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.lookBtn = lookBtn;
    }
    return _lookBtn;
}


/** closeBtn */
- (UIButton *)closeBtn {
    if (!_closeBtn) {
        UIButton *closeBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(closeBtnClick)];
        [closeBtn setImage:[UIImage imageNamed:@"appoint_icon_closing"] forState:UIControlStateNormal];
        [closeBtn setImage:[UIImage imageNamed:@"appoint_icon_closed"] forState:UIControlStateDisabled];
        closeBtn.adjustsImageWhenHighlighted = NO;
        closeBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.closeBtn = closeBtn;
    }
    return _closeBtn;
}

/** signUpBtn */
- (UIButton *)signUpBtn {
    if (!_signUpBtn) {
        UIButton *signUpBtn = [UIButton buttonWithTitle:@"" titleColor:[UIColor colorWithHexString:@"D70110"] font:[UIFont systemFontOfSize:KDRate(14)] target:self action:@selector(signUpBtnClick)];
        [signUpBtn setImage:[UIImage imageNamed:@"appoint_icon_noSignUp"] forState:UIControlStateNormal];
        [signUpBtn setImage:[UIImage imageNamed:@"appoint_icon_signUp"] forState:UIControlStateDisabled];
        signUpBtn.adjustsImageWhenHighlighted = NO;
        signUpBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.signUpBtn = signUpBtn;
    }
    return _signUpBtn;
}

@end
