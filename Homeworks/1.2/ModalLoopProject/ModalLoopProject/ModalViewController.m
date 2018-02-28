//
//  ModalViewController.m
//  ModalLoopProject
//
//  Created by Yoshikazu Ando on 2018/03/01.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)pressCloseModalButton:(id)sender {
    // デリゲートを呼び出す
    if ([_delegate respondsToSelector:@selector(didCloseModalButtonPressed)]) {
        [_delegate didCloseModalButtonPressed];
    }
}

@end
