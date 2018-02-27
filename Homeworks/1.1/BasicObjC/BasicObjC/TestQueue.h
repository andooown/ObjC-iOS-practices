//
//  TestQueue.h
//  BasicObjC
//
//  Created by Ando Yoshikazu on 2018/02/28.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

// オブジェクトを追加するメソッド
- (void)push:(id)object;
// 先頭のオブジェクトを返すメソッド
- (id)pop;
// キューの長さを返すメソッド
- (NSInteger)size;

@end
