//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by Yoshikazu Ando on 2018/02/23.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"
#import "NSString+NSString_HogeAddition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MixiSampleClass のテスト
    MixiSampleClass *obj = [[MixiSampleClass alloc] initWithName: @"Test" sampleType:SampleTypeHoge];
    NSLog(@"obj.name: %@", obj.name);
    NSLog(@"obj.name addHoge(): %@", [obj.name addHoge]);
    NSLog(@"getStaticString(): %@", [MixiSampleClass getStaticString]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
