//
//  ViewController.m
//  test
//
//  Created by 全尼古拉斯 on 2020/9/9.
//  Copyright © 2020 全尼古拉斯. All rights reserved.
//

#import "ViewController.h"
#import <XBInterActiveAdSDK/XBInterActiveAdSDK.h>
@interface ViewController ()

@end

@implementation ViewController

//let appKey = "demo"
//let appSecret = "ac4a10da9e7f62adb59dbe7f62adb59dbe770e8d"
//let soltId: Int64 = 1
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(50, 50, 300, 60);
    [btn setBackgroundColor:UIColor.redColor];
    [btn setTitle:@"clear Ad" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onClickClear:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    [[XBInterActiveAdManager shared] startWithAppKey:@"vnntest0529" appSecret:@"9a19fab1935aba50f1fd5a6bdb442172" complete:^(XBError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self show];
        });
        
    }];
}

- (void)onClickClear: (UIButton *)btn
{
    [[XBInterActiveAdManager shared] clearAdWithTag:1024 customView:self.view];
}

- (void)show
{
    [[XBInterActiveAdManager shared] showAdWithWidgetId:@"986" scale:1 origin:CGPointMake(200, 500) tag: 1024 customView:self.view onShowAction:^{
        NSLog(@"Ad show");
    } onClickAction:^{
        NSLog(@"ad clicked");
    } onCloseAction:^{
        NSLog(@"ad close");
    } onLoadFailed:^(XBError *error) {
        NSLog(@"ad failed");
        NSLog(error.description);
    } onClearAction:^{
        NSLog(@"ad clear");
    }];
}

@end
