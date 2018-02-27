//
//  TestQueue.m
//  BasicObjC
//
//  Created by Ando Yoshikazu on 2018/02/28.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import "TestQueue.h"

@interface TestQueue ()

@property (nonatomic, retain) NSMutableArray *queue;    // キュー本体

@end

@implementation TestQueue

// コンストラクタ
- (id)init {
    self = [super init];
    if (self) {
        // 空の配列をキューに設定
        self.queue = [NSMutableArray array];
    }
    
    return self;
}

// オブジェクトを追加するメソッド
- (void)push:(id)object {
    [self.queue addObject:object];
}
// 先頭のオブジェクトを返すメソッド
- (id)pop {
    id obj = nil;
    if (self.queue.count > 0) {
        // 先頭のオブジェクトを取得し、キューから削除する
        obj = self.queue[0];
        [self.queue removeObjectAtIndex:0];
    }
    
    return obj;
}
// キューの長さを返すメソッド
- (NSInteger)size {
    return self.queue.count;
}

@end
