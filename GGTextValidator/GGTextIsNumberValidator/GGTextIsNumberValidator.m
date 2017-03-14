//
//  GGTextIsNumberValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextIsNumberValidator.h"

@implementation GGTextIsNumberValidator

- (BOOL)validateWithText:(NSString *)text {
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789."] invertedSet];
    NSString *filtered = [[text componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    BOOL passed = [text isEqualToString:filtered];
    if (!passed) {
        self.result = @"应全为数字";
        //self.result = @"should be numbers";
        self.length = text.length;
    }
    return passed;
}
@end
