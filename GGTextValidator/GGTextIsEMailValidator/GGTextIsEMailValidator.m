//
//  GGTextIsEMailValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextIsEMailValidator.h"

@implementation GGTextIsEMailValidator

- (BOOL)validateWithText:(NSString *)text {
    NSString *Regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELFMATCHES %@", Regex];
    
    BOOL passed = [emailTest evaluateWithObject:text];
    if (!passed) {
        self.result = @"不是合法邮箱地址";
        //self.result = @"is not an email address";
        self.length = text.length;
    }
    return passed;
}

@end
