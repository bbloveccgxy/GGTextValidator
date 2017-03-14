//
//  GGTextValidator.h
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGTextField.h"
#import "GGTextView.h"

#import "GGTextIsEmptyValidator.h"
#import "GGTextLessThanValidator.h"
#import "GGTextMoreThanValidator.h"
#import "GGTextIsEMailValidator.h"
#import "GGTextIsNumberValidator.h"
#import "GGTextIsPhoneNumberValidator.h"

/**
 Validator factory
 */
@interface GGTextValidator : NSObject

+ (GGTextIsEmptyValidator*)isEmpty;

+ (GGTextLessThanValidator*)lessThan:(NSInteger)length;

+ (GGTextMoreThanValidator*)moreThan:(NSInteger)length;

+ (GGTextIsEMailValidator*)isEMail;

+ (GGTextIsNumberValidator*)isNumber;

+ (GGTextIsPhoneNumberValidator*)isPhoneNumber;


@end
