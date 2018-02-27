//
//  TestStack.h
//  BasicObjC
//
//  Created by Ando Yoshikazu on 2018/02/28.
//  Copyright © 2018年 Ando Yoshikazu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestStack : NSObject

// オブジェクトを追加するメソッド
- (void)push:(id)object;
// 末尾のオブジェクトを返すメソッド
- (id)pop;
// スタックの長さを返すメソッド
- (NSInteger)size;

@end
