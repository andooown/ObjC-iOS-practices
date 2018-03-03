//
//  MixiViewController.m
//  NavigationControllerProject
//
//  Created by Yoshikazu Ando on 2018/03/03.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()

@end

@implementation MixiViewController

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

- (IBAction)pushButtonTapped:(id)sender {
    // 新しい MixiViewController に push する
    MixiViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MixiViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
