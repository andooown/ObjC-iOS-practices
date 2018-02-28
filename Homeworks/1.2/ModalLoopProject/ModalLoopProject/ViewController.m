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

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // デリゲートに自身を設定
    if ([segue.identifier isEqualToString:@"presentModalViewController"]) {
        ((ModalViewController *)segue.destinationViewController).delegate = self;
    }
}

#pragma mark - ModalViewControllerDelegate methods
- (void)didCloseModalButtonPressed {
    // モーダル画面を閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
    
    if (self.isModalShowed) {
        // 2 回目以降の表示のあとはもう一度モーダル画面を開く
        ModalViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ModalViewController"];
        viewController.delegate = self;
        [self presentViewController:viewController animated:YES completion:nil];
    }
    
    // 状態を更新
    self.isModalShowed = YES;
}

@end
