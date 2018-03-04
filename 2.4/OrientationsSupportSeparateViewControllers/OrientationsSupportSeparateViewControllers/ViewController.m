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
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(<#selector#>) name:UIDeviceOrientationDidChangeNotification object:nil];
    // LandscapeViewCOntroller を作成
    self.landscapeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LandscapeViewController"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
