//
//  ModalViewController.h
//  MyFirstProject
//
//  Created by Ando Yoshikazu on 2018/02/27.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import <UIKit/UIKit.h>

// プロトコルの宣言
@protocol ModalViewControllerDelegate <NSObject>
- (void)didPressDismissModalButton;     // Dismiss Modal ボタンが押されたときの処理
@end

@interface ModalViewController : UIViewController

@property (nonatomic, weak) id<ModalViewControllerDelegate> delegate;   // delegate オブジェクト

@end
