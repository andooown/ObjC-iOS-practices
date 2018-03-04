//
//  ViewController.m
//  OrientationsSupportSeparateViewControllers
//
//  Created by Yoshikazu Ando on 2018/03/04.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"
#import "LandscapeViewController.h"

@interface ViewController ()

@property (nonatomic, strong) LandscapeViewController *landscapeViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UIDevice からの回転通知の受取りを登録
    [UIDevice.currentDevice beginGeneratingDeviceOrientationNotifications];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
    // LandscapeViewCOntroller を作成
    self.landscapeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LandscapeViewController"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 回転通知時に呼ばれるメソッド
- (void)orientationChanged:(NSNotification *)notification {
    // 現在の回転方向を取得
    UIDeviceOrientation deviceOrientation = UIDevice.currentDevice.orientation;
    // デバイスの回転方向に合わせて ViewController を制御
    if (UIDeviceOrientationIsLandscape(deviceOrientation)) {
        // LandscapeViewController を表示
        [self presentViewController:self.landscapeViewController animated:NO completion:nil];
    } else if (UIDeviceOrientationIsPortrait(deviceOrientation)) {
        // 現在表示されている ViewController を非表示
        [self dismissViewControllerAnimated:NO completion:nil];
    }
}


@end
