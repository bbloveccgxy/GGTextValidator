//
//  GGTextLessThanValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextLessThanValidator.h"

@implementation GGTextLessThanValidator

+ (GGTextLessThanValidator *)lessThan:(NSInteger)length {
    GGTextLessThanValidator *validator = [[GGTextLessThanValidator alloc] init];
    validator.length = length;
    return validator;
}

- (BOOL)validateWithText:(NSString *)text {
    if (text) {
        if (text.length < self.length) {
            return YES;
        }
        else {
            self.result = [NSString stringWithFormat:@"应少于%ld个字",(long)self.length];
            //self.result = [NSString stringWithFormat:@"should be less than %ld characters",(long)self.length];
            return NO;
        }
    }
    return YES;
}

@end
