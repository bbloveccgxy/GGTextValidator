//
//  GGTextIsEmptyValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextIsEmptyValidator.h"

@implementation GGTextIsEmptyValidator

- (BOOL)validateWithText:(NSString *)text {
    if ([text isEqualToString:@""] || text.length == 0 || !text) {
        self.result = @"不能为空";
        //self.result = @"can`t be empty";
        self.length = 0;
        return NO;
    }
    else {
        return YES;
    }
}

@end
