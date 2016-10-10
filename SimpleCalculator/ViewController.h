//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Student P_07 on 11/09/16.
//  Copyright © 2016 chaitu. All rights reserved.
//
#define kAllUIElementHeight 50.0
#define kVerticalPadding 10.0
#define kHorizontalPadding 40.0
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

{
    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat textFieldWidth;
    
    CGFloat equalToButtonYCoordinate;
    CGFloat displayLabelYCoordinate;
    UILabel *errorLabel;
    UILabel *displayLabel;
    UITextField *myTextField1;
    UITextField *myTextField2;
    UIButton *additionButton;
    UIButton *substractionButton;
    UIButton *multiplicationButton;
    UIButton *divisionButton;
    UIButton *equalToButton;
    UIButton *clearButton1;
    UIButton *clearButton2;
    char oper;
    NSString *newValueString;
}

@end

