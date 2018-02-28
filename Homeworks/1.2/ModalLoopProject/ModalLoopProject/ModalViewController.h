//
//  ModalViewController.h
//  ModalLoopProject
//
//  Created by Yoshikazu Ando on 2018/03/01.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate <NSObject>

- (void)didCloseModalButtonPressed;

@end


@interface ModalViewController : UIViewController

@property (nonatomic, weak) id<ModalViewControllerDelegate> delegate;

@end
