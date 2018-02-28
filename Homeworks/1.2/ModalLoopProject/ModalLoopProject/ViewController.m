//
//  ViewController.m
//  ModalLoopProject
//
//  Created by Yoshikazu Ando on 2018/03/01.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) BOOL isModalShowed;   // モーダル画面が表示されたか

@end

@implementation ViewController

- (id)init {
    self = [super init];
    if (self) {
        self.isModalShowed = NO;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ModalViewControllerDelegate methods
- (void)didCloseModalButtonPressed {
    
}

@end
