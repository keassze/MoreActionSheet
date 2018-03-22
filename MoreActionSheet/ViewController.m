//
//  ViewController.m
//  MoreActionSheet
//
//  Created by 何松泽 on 2018/3/22.
//  Copyright © 2018年 何松泽. All rights reserved.
//

#import "ViewController.h"
#import "MoreActionSheetView.h"

@interface ViewController ()

@property (nonatomic, strong) MoreActionSheetView *moreView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    void (^share)(void) = ^{
        [self share];
    };
    void (^edit)(void) = ^{
        [self edit];
    };
    void (^delete)(void) = ^{
        [self delete];
    };
    
    NSDictionary *dic = @{
                          MoreActionSheet_Title  :@"分享",
                          MoreActionSheet_Image  :@"Tribe_Editor_Share",
                          MoreActionSheet_Func   :share,
                          };
    NSDictionary *dic2 = @{
                           MoreActionSheet_Title  :@"编辑",
                           MoreActionSheet_Image  :@"Tribe_Editor_Write",
                           MoreActionSheet_Func   :edit,
                           };
    NSDictionary *dic3 = @{
                           MoreActionSheet_Title  :@"删除",
                           MoreActionSheet_Image  :@"Tribe_Editor_Delete",
                           MoreActionSheet_Func   :delete,
                           };
    NSArray *tempArr = [[NSArray alloc] initWithObjects:dic,dic2,dic3, nil];
    
    _moreView = [[MoreActionSheetView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_moreView setBtnArray:tempArr];
    [self.view addSubview:_moreView];
}

- (void)share {
    NSLog(@"%@",NSStringFromSelector(@selector(share)));
}

- (void)edit {
    NSLog(@"%@",NSStringFromSelector(@selector(edit)));
}

- (void)delete {
    NSLog(@"%@",NSStringFromSelector(@selector(delete)));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end









