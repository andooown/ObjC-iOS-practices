//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by Yoshikazu Ando on 2018/02/23.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MixiSampleClass のテスト
    MixiSampleClass *obj = [MixiSampleClass alloc];
    obj = [obj initWithName: @"Test" sampleType:SampleTypeHoge];
    NSLog(@"%@", obj.name);
    NSLog(@"%@", [MixiSampleClass getStaticString]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
