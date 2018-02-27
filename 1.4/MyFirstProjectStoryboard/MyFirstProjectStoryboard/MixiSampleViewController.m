//
//  MixiSampleViewController.m
//  MyFirstProjectStoryboard
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
    
    // Label のテキストを書き換える
    self.label.text = @"Test";
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

- (IBAction)buttonTapped:(id)sender {
    // Label のテキストを書き換える
    self.label.text = @"YES";
}

- (IBAction)secondButtonTapped:(id)sender {
    // ModalViewController を表示する segue を呼び出す
    [self performSegueWithIdentifier:@"presentModalViewController" sender:self];
}

@end
