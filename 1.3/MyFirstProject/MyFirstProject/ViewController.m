//
//  ViewController.m
//  MyFirstProject
//
//  Created by Yoshikazu Ando on 2018/02/25.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MixiSampleViewController
    MixiSampleViewController *_sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    [self.view addSubview:_sampleVC.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
