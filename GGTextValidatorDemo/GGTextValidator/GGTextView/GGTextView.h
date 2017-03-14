//
//  GGTextView.h
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GGTextBaseValidator.h"
#import "GGTextLessThanValidator.h"

/**
 Validation result block as parameter in validate methods
 
 @param result Result Description
 @param length Input limit length
 */
typedef void(^ValidateResult)(NSString *result, NSInteger length);

@interface GGTextView : UITextView

/**
 A description of validation that maybe used in UITextField Delegate.
 */
@property (copy, nonatomic) NSString *validateDescription;

/**
 This validator should be used in shouldChangeCharactersInRange,
 And must not be added to the array.
 */
@property (strong, nonatomic) GGTextLessThanValidator *lessThanValidator;

/**
 Add a validator for this textfield
 
 @param validator Validation result block
 */
- (void)addValidator:(GGTextBaseValidator*)validator;

/**
 This method can be used in textFieldDidEndEditing,
 after textfield resign first responder, result message is in the result block.
 
 @param result Validation result block
 */
- (void)validateWithResult:(ValidateResult)result;

/**
 This method can be used in shouldChangeCharactersInRange,
 after textfield resign first responder, result message is in the result block.
 
 @param result Validation result block
 */
- (void)validateDuringTypingWithResult:(ValidateResult)result;

@end
