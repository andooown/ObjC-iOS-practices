//
//  ViewController.m
//  BasicObjC
//
//  Created by Ando Yoshikazu on 2018/02/28.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 課題 1
    NSArray *obj = @[
        @{
            @"domain" : @"mixi.jp",
            @"entry" : @[
                @"list_voice.pl",
                @"list_diary.pl",
                @"list_mymall_item.pl"
            ]
        },
        @{
            @"domain" : @"mmall.jp",
            @"entry" : @[
                @{
                    @"path" : @"add_diary.pl",
                    @"query" : @[
                        @{
                            @"tag_id" : @7
                        }
                    ]
                }
            ]
        },
        @{
            @"domain" : @"itunes.apple.com"
        }
    ];
    NSLog(@"%@", obj);
    
    // 課題 2
    TestQueue *queue = [[TestQueue alloc] init];
    TestStack *stack = [[TestStack alloc] init];
    for (int i = 0; i < 3; i++) {
        [queue push:[NSNumber numberWithInt:i]];
        [stack push:[NSNumber numberWithInt:i]];
    }
    NSLog(@"TestQueue");
    while (queue.size > 0) {
        NSLog(@"%@", [queue pop]);
    }
    NSLog(@"TestStack");
    while (stack.size > 0) {
        NSLog(@"%@", [stack pop]);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
