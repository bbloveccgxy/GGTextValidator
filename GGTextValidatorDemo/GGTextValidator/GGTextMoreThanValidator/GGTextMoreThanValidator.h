//
//  GGTextMoreThanValidator.h
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGTextBaseValidator.h"

@interface GGTextMoreThanValidator : GGTextBaseValidator

/**
 Create a validator that validate whether the text.length is more than 'length'
 
 @param length The min length of a text
 @return GGTextMoreThanValidator instance
 */
+ (GGTextMoreThanValidator*)moreThan:(NSInteger)length;

@end
