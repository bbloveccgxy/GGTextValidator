//
//  GGTextValidator.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextValidator.h"

@implementation GGTextValidator

+ (GGTextIsEmptyValidator *)isEmpty {
    GGTextIsEmptyValidator *validator = [[GGTextIsEmptyValidator alloc] init];
    return validator;
}

+ (GGTextLessThanValidator *)lessThan:(NSInteger)length {
    GGTextLessThanValidator *validator = [GGTextLessThanValidator lessThan:length];
    return validator;
}

+ (GGTextMoreThanValidator *)moreThan:(NSInteger)length {
    GGTextMoreThanValidator *validator = [GGTextMoreThanValidator moreThan:length];
    return validator;
}

+ (GGTextIsEMailValidator*)isEMail{
    GGTextIsEMailValidator *validator = [[GGTextIsEMailValidator alloc] init];
    return validator;
}

+ (GGTextIsNumberValidator*)isNumber{
    GGTextIsNumberValidator *validator = [[GGTextIsNumberValidator alloc] init];
    return validator;
}

+ (GGTextIsPhoneNumberValidator*)isPhoneNumber{
    GGTextIsPhoneNumberValidator *validator = [[GGTextIsPhoneNumberValidator alloc] init];
    return validator;
}
@end
