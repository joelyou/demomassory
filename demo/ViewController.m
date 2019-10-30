//
//  ViewController.m
//  demo
//
//  Created by JYJ on 2019/5/5.
//  Copyright © 2019 dcjf. All rights reserved.
//

#import "ViewController.h"
#import "KDAppointMainCell.h"
#import "KDAppointModel.h"
#import "Masonry/Masonry.h"


#define KDScreenW [UIScreen mainScreen].bounds.size.width
#define KDScreenH [UIScreen mainScreen].bounds.size.height
#define KDRadius KDScreenW / 375.0
#define KDRate(x) (x) * KDRadius

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

/** tableView */
@property (nonatomic, strong) UITableView *tableView;


/** dataArray */
@property (nonatomic, strong) NSMutableArray *dataArray;

@property (nonatomic, weak) MASConstraint *topC;

@end

@implementation ViewController

#pragma mark - ♻️life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self kd_initData];
    [self kd_initSubViews];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

#pragma mark - 🔒private

- (void)kd_initData {
    KDAppointModel *model1 = [[KDAppointModel alloc] init];
    model1.time = @"03/249晚上-00";
    model1.location = @"杭州";
    model1.hope = @"约会期望：看脸/有趣/抱大腿";
    model1.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    model1.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model1];
    
    KDAppointModel *model9 = [[KDAppointModel alloc] init];
    model9.time = @"03/249晚上-01";
    model9.location = @"杭州";
    model9.hope = @"约会期望：看脸/有趣/抱大腿";
    model9.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    model9.photos = @[@"1", @"2", @"3"];
    [self.dataArray addObject:model9];
    
    KDAppointModel *model2 = [[KDAppointModel alloc] init];
    model2.time = @"03/9晚上-02";
    model2.location = @"杭州/shanghai";
    model2.hope = @"约会期望：抱大腿";
    model2.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    //    model2.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model2];
    
    KDAppointModel *model3 = [[KDAppointModel alloc] init];
    model3.time = @"03/249晚上-03";
    model3.location = @"杭州";
    model3.hope = @"约会期望：看脸/有趣/抱大腿";
    //    model3.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    //    model3.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model3];
    
    KDAppointModel *model4 = [[KDAppointModel alloc] init];
    model4.time = @"03/249晚上-04";
    model4.location = @"杭州";
    //    model4.hope = @"约会期望：看脸/有趣/抱大腿";
    //    model4.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    //    model4.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model4];
    
    KDAppointModel *model5 = [[KDAppointModel alloc] init];
    model5.time = @"03/249晚上-05";
    model5.location = @"杭州";
//    model5.hope = @"约会期望：看脸/有趣/抱大腿";
        model5.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒聊天吃饭/唱歌/跳舞/喝假酒聊天吃饭/唱歌/跳舞/喝假酒聊天吃饭/唱歌/跳舞/喝假酒聊天吃饭/唱歌/跳舞/喝假酒";
    model5.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model5];
    
    KDAppointModel *model8 = [[KDAppointModel alloc] init];
    model8.time = @"03/249晚上-06";
    model8.location = @"杭州";
    model8.hope = @"约会期望：看脸/有趣/抱大腿";
    //    model5.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    model8.photos = @[@"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model8];
    
    KDAppointModel *model6 = [[KDAppointModel alloc] init];
    model6.time = @"03/249晚上-07";
    model6.location = @"杭州";
    //    model6.hope = @"约会期望：看脸/有趣/抱大腿";
    //    model6.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    model6.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model6];
    
    KDAppointModel *model7 = [[KDAppointModel alloc] init];
    model7.time = @"03/249晚上-08";
    model7.location = @"杭州";
    //    model7.hope = @"约会期望：看脸/有趣/抱大腿";
    model7.remarks = @"聊天吃饭/唱歌/跳舞/喝假酒";
    model7.photos = @[@"1", @"2", @"3", @"1", @"2", @"3", @"1", @"2", @"3"];
    [self.dataArray addObject:model7];
}

- (void)kd_initSubViews {

    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}



#pragma mark - 🔄overwrite

#pragma mark - 🚪public

#pragma mark - 🍐delegate

#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KDAppointMainCell *cell = [KDAppointMainCell cellWithTableView:tableView];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

#pragma mark - ☎️notification

#pragma mark - 🎬event response

#pragma mark - ☸getter and setter


- (UITableView *)tableView {
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc] init];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.separatorStyle = UITableViewCellSelectionStyleNone;
        tableView.showsVerticalScrollIndicator = YES;
        tableView.backgroundColor = [UIColor grayColor];
        tableView.contentInset = UIEdgeInsetsMake(0, 0, 49 + 5, 0);
        tableView.estimatedRowHeight = KDRate(265);
        tableView.rowHeight = UITableViewAutomaticDimension;
        self.tableView = tableView;
        //        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        if (@available(iOS 11.0, *)) {
            self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _tableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        self.dataArray = [NSMutableArray array];
    }
    return _dataArray;
}


@end
