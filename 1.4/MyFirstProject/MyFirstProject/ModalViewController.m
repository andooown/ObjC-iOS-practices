//
//  ModalViewController.m
//  MyFirstProject
//
//  Created by Ando Yoshikazu on 2018/02/27.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)pressDismissModelButton:(id)sender {
    // 自信を閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
