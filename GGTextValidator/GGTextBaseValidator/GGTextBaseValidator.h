//
//  GGTextBaseValidator.h
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 This is the base class of validators and should no be instantiated.
 */
@interface GGTextBaseValidator : NSObject

/**
 The length of the text to validate
 */
@property (assign, nonatomic) NSInteger length;

/**
 Result message after validate.
 */
@property (copy, nonatomic) NSString *result;

/**
 The method to validate a text. Subclass should override this method

 @param text The text to validate
 @return If the text passes the validation, return YES; If not, return NO.
 */
- (BOOL)validateWithText:(NSString*)text;

@end
