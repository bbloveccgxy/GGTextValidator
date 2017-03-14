//
//  GGTextBaseValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextBaseValidator.h"

@implementation GGTextBaseValidator

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (BOOL)validateWithText:(NSString *)text {
    NSException *exp = [NSException exceptionWithName:@"GGTextValidator Error" reason:@"- (BOOL)validateWithText:(NSString *)text shoule be overrided in subclass" userInfo:nil];
    @throw exp;
}

@end
