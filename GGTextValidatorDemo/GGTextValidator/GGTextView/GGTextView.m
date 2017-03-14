//
//  GGTextView.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextView.h"

@interface GGTextView ()

@property (strong, nonatomic) NSMutableArray *validatorArray;

@end

@implementation GGTextView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.validatorArray = [NSMutableArray array];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.validatorArray = [NSMutableArray array];
    }
    return self;
}

- (void)addValidator:(GGTextBaseValidator *)validator {
    [self.validatorArray addObject:validator];
}

- (void)validateWithResult:(ValidateResult)result {
    for (GGTextBaseValidator *validator in self.validatorArray) {
        if (![validator validateWithText:self.text]) {
            result(validator.result, validator.length);
            break;
        }
    }
}

- (void)validateDuringTypingWithResult:(ValidateResult)result {
    if (self.lessThanValidator) {
        if (![self.lessThanValidator validateWithText:self.text]) {
            result(self.lessThanValidator.result, self.lessThanValidator.length);
        }
        
    }
}

@end
