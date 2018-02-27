//
//  TestStack.m
//  BasicObjC
//
//  Created by Ando Yoshikazu on 2018/02/28.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import "TestStack.h"

@interface TestStack ()

@property (nonatomic, retain) NSMutableArray *stack;    // スタック本体

@end

@implementation TestStack

// コンストラクタ
- (id)init {
    self = [super init];
    if (self) {
        // 空の配列をスタックに設定
        self.stack = [NSMutableArray array];
    }
    
    return self;
}

// オブジェクトを追加するメソッド
- (void)push:(id)object {
    [self.stack addObject:object];
}
// 末尾のオブジェクトを返すメソッド
- (id)pop {
    id obj = nil;
    if (self.stack.count > 0) {
        // 末尾のオブジェクトを取得し、スタックから削除する
        int idx = self.stack.count - 1;
        obj = self.stack[idx];
        [self.stack removeObjectAtIndex:idx];
    }
    
    return obj;
}
// スタックの長さを返すメソッド
- (NSInteger)size {
    return self.stack.count;
}

@end
