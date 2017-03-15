# GGTextValidator
## Breif Introduction
An input validator for UITextField and UITextView including some useful validation as if text is empty,text.length is less than...<br>
The goal of this validator is to reduce if()...else()... while there are many TextField or TextView in a single ViewController.<br>
## Usage
Just include "GGTextValidator.h".<br>
This validator should be used with GGTextField or GGTextView.<br>
### Example code
```objective-c
GGTextField *field = [[GGTextField alloc] init];
field.validateDescription = @"用户名";
//field.validateDescription = @"Username";
field addValidator:[GGTextValidator isEmpty]];
field.delegate = self;
```
In the delegate method:<br>
```objective-c
- (void)textFieldDidEndEditing:(UITextField *)textField {
    GGTextField *field = (GGTextField*)textField;
    [field validateWithResult:^(NSString *string, NSInteger length) {
        NSLog(@"%@ %@",field.validateDescription,string);
        NSLog(@"%ld",(long)length);
    }];
}   
```
## Example is in the demo.
# Look forward to your suggestions!!!

