//
//  MixiSampleClass.m
//  BasicObjectiveC
//
//  Created by Yoshikazu Ando on 2018/02/23.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "MixiSampleClass.h"

// クラス定数の宣言
static NSString *const constString = @"const";
// クラス変数の宣言
static NSString *staticString = @"static";

// 無名カテゴリの宣言(private扱い)
@interface MixiSampleClass()

@property (nonatomic, assign) BOOL isEnabled;
@property (nonatomic, assign) SampleType sampleType;

@end

@implementation MixiSampleClass

- (id)initWithName:(NSString *)name sampleType:(SampleType)sampleType {
    // 親クラスの初期化
    self = [super init];
    // 自身の初期化
    if (self) {
        _name = name;
        _isEnabled = YES;
        _sampleType = sampleType;
    }
    
    return self;
}

+ (NSString *)getStaticString {
    return staticString;
}

@end
