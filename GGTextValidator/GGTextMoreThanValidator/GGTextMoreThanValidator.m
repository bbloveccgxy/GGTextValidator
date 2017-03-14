//
//  GGTextMoreThanValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextMoreThanValidator.h"

@implementation GGTextMoreThanValidator

+ (GGTextMoreThanValidator *)moreThan:(NSInteger)length {
    GGTextMoreThanValidator *validator = [[GGTextMoreThanValidator alloc] init];
    validator.length = length;
    return validator;
}

- (BOOL)validateWithText:(NSString *)text {
    if (text) {
        if (text.length < self.length) {
            self.result = [NSString stringWithFormat:@"不能少于%ld个字",(long)self.length];
            //self.result = [NSString stringWithFormat:@"should be more than %ld characters",(long)self.length];
            return NO;
        }
        return YES;
    }
    return NO;
}

@end
