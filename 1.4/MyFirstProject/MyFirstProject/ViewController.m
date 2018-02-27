//
//  ViewController.m
//  MyFirstProject
//
//  Created by Ando Yoshikazu on 2018/02/26.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)pressShowModalButton:(id)sender {
    // ModalViewController を作成
    ModalViewController *modal = [[ModalViewController alloc] init];
    // delegate 先に自身を設定
    modal.delegate = self;
    // ModalViewController を表示
    [self presentViewController:modal animated:YES completion:nil];
}

#pragma mark - ModalViewControllerDelegate methods
- (void)didPressDismissModalButton {
    // ModalViewControllerを閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

