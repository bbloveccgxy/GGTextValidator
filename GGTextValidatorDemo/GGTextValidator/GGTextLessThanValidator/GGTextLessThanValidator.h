//
//  GGTextLessThanValidator.h
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextBaseValidator.h"

@interface GGTextLessThanValidator : GGTextBaseValidator

/**
 Create a validator that validate whether the text.length is less than 'length'

 @param length The max length of a text
 @return GGTextLessThanValidator instance
 */
+ (GGTextLessThanValidator*)lessThan:(NSInteger)length;


@end
