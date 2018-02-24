//
//  NSString+NSString_HogeAddition.m
//  BasicObjectiveC
//
//  Created by Ando Yoshikazu on 2018/02/25.
//  Copyright © 2018年 Yoshikazu Ando. All rights reserved.
//

#import "NSString+NSString_HogeAddition.h"

@implementation NSString (NSString_HogeAddition)

- (NSString *)addHoge {
    return [NSString stringWithFormat:@"%@hoge", self];
}

@end
