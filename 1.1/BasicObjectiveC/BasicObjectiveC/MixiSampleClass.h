//
//  MixiSampleClass.h
//  BasicObjectiveC
//
//  Created by Yoshikazu Ando on 2018/02/23.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import <Foundation/Foundation.h>

// 列挙体の宣言
typedef NS_ENUM(NSInteger, SampleType) {
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

// プロパティの宣言
@property (nonatomic, strong) NSString *name;

// インスタンスメソッドの宣言
-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType;
// クラスメソッドの宣言
+(NSString *) getStaticString;

@end
