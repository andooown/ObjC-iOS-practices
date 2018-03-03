//
//  ViewController.m
//  NavigationControllerProject
//
//  Created by Yoshikazu Ando on 2018/03/03.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // MixiViewController を root に持つ NavigationController を表示
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MixiViewController"];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self presentViewController:navigationController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
