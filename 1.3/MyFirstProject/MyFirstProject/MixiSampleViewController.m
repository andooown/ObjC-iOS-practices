//
//  MixiSampleViewController.m
//  MyFirstProject
//
//  Created by Yoshikazu Ando on 2018/02/25.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "MixiSampleViewController.h"

@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // grayView の背景色を変更
    [_grayView setBackgroundColor:[UIColor redColor]];
    // grayView のサイズを変更
    [_grayView setFrame:CGRectMake(_grayView.frame.origin.x, _grayView.frame.origin.y, _grayView.frame.size.width / 2, _grayView.frame.size.height / 2)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
