//
//  ViewController.m
//  OrientationsSupportRelayout
//
//  Created by Yoshikazu Ando on 2018/03/04.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *blueView;
@property (strong, nonatomic) IBOutlet UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static CGRect const kPortraitBuleViewRect = { { 32.0f, 18.0f }, { 150.0f, 150.0f } };
static CGRect const kLandscapeBuleViewRect = { { 18.0f, 32.0f }, { 150.0f, 150.0f } };
static CGRect const kPortraitYellowViewRect = { { 32.0f, 185.0f }, { 150.0f, 150.0f } };
static CGRect const kLandscapeYellowViewRect = { { 185.0f, 32.0f }, { 150.0f, 150.0f } };

// View の描画時
- (void)viewWillLayoutSubviews {
    NSLog(@"will layout subviews");
}

// 回転前処理
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"will rotate");
}

// 回転する場合のアニメーションを設定
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"will animate");
    switch (toInterfaceOrientation) {
        case UIInterfaceOrientationPortrait:
            [_blueView setFrame:kPortraitBuleViewRect];
            [_yellowView setFrame:kPortraitYellowViewRect];
            break;
        case UIInterfaceOrientationLandscapeLeft:
        case UIInterfaceOrientationLandscapeRight:
            [_blueView setFrame:kLandscapeBuleViewRect];
            [_yellowView setFrame:kLandscapeYellowViewRect];
            break;
        default:
            break;
    }
}

// 回転完了処理
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    NSLog(@"did rotate");
}

@end
