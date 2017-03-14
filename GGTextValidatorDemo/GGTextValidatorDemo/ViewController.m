//
//  ViewController.m
//  GGTextValidatorDemo
//
//  Created by gxy on 2017/3/14.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "ViewController.h"
#import "GGTextValidator.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GGTextField *field = [[GGTextField alloc] initWithFrame:CGRectMake(50, 100, 100, 40)];
    field.layer.borderWidth = 1.0;
    field.layer.borderColor = [UIColor grayColor].CGColor;

    
    field.validateDescription = @"用户名";
    //    field.validateDescription = @"Username";
    [field addValidator:[GGTextValidator isEmpty]];
    [field addValidator:[GGTextValidator moreThan:5]];
    field.lessThanValidator = [GGTextValidator lessThan:10];
    field.delegate = self;
    
    [self.view addSubview:field];
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    GGTextField *field = (GGTextField*)textField;
    [field validateDuringTypingWithResult:^(NSString *string, NSInteger length) {
        NSLog(@"%@ %@",field.validateDescription,string);
        NSLog(@"%ld",(long)length);
    }];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    GGTextField *field = (GGTextField*)textField;
    [field validateWithResult:^(NSString *string, NSInteger length) {
        NSLog(@"%@ %@",field.validateDescription,string);
        NSLog(@"%ld",(long)length);
    }];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
