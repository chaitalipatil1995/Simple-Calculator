//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Student P_07 on 11/09/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    
    textFieldWidth = screenWidth - (2*kHorizontalPadding) - kAllUIElementHeight;
    
    equalToButtonYCoordinate = screenHeight-textFieldWidth-(5*kVerticalPadding)-100;
    
    myTextField1 = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 100, screenWidth-(4*kHorizontalPadding), kAllUIElementHeight)];
    [myTextField1 setBackgroundColor:[UIColor whiteColor]];
    [myTextField1 setTextColor:[UIColor blackColor]];
    [myTextField1 setBorderStyle:UITextBorderStyleBezel];
    [myTextField1 setBorderStyle:UITextBorderStyleRoundedRect];
    [myTextField1 setFont:[UIFont boldSystemFontOfSize:20]];
    [myTextField1 setPlaceholder:@"Enter first number:"];
    myTextField1.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:myTextField1];
    
    
    myTextField2 = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 250, screenWidth-(4*kHorizontalPadding), kAllUIElementHeight)];
    [myTextField2 setBackgroundColor:[UIColor whiteColor]];
    [myTextField2 setTextColor:[UIColor blackColor]];
    [myTextField2 setBorderStyle:UITextBorderStyleBezel];
    [myTextField2 setBorderStyle:UITextBorderStyleRoundedRect];
    [myTextField2 setFont:[UIFont boldSystemFontOfSize:20]];
    [myTextField2 setPlaceholder:@"Enter second number:"];
    myTextField2.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:myTextField2];
    
    
    ////
    
    
    
    additionButton = [[UIButton alloc]initWithFrame:CGRectMake(kHorizontalPadding, 175, kAllUIElementHeight, kAllUIElementHeight)];
    additionButton.backgroundColor = [UIColor whiteColor];
    [additionButton setTitle:@"+" forState:UIControlStateNormal];
    additionButton.layer.cornerRadius = kAllUIElementHeight/2;
    [additionButton addTarget:self action:@selector(handleAddition) forControlEvents:UIControlEventTouchUpInside];
    [additionButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    additionButton.titleLabel.font = [UIFont systemFontOfSize:50];
    [additionButton.titleLabel setFont:[UIFont boldSystemFontOfSize:35.f]];
    [[additionButton layer] setBorderWidth:2.0f];
    [[additionButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:additionButton];
    
    
    ////
    
    
    
    substractionButton = [[UIButton alloc]initWithFrame:CGRectMake((1.4*kHorizontalPadding)+kAllUIElementHeight,175, kAllUIElementHeight, kAllUIElementHeight)];
    substractionButton.backgroundColor = [UIColor whiteColor];
    [substractionButton setTitle:@"-" forState:UIControlStateNormal];
    substractionButton.layer.cornerRadius = kAllUIElementHeight/2;
    [substractionButton addTarget:self action:@selector(handleSubstraction) forControlEvents:UIControlEventTouchUpInside];
    [substractionButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    substractionButton.titleLabel.font = [UIFont systemFontOfSize:50];
    [substractionButton.titleLabel setFont:[UIFont boldSystemFontOfSize:35.f]];
    [[substractionButton layer] setBorderWidth:2.0f];
    [[substractionButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:substractionButton];
    
    ////
    
    multiplicationButton = [[UIButton alloc]initWithFrame:CGRectMake((1.9*kHorizontalPadding)+(2*kAllUIElementHeight),175, kAllUIElementHeight, kAllUIElementHeight)];
    multiplicationButton.backgroundColor = [UIColor whiteColor];
    [multiplicationButton setTitle:@"*" forState:UIControlStateNormal];
    multiplicationButton.layer.cornerRadius = kAllUIElementHeight/2;
    [multiplicationButton addTarget:self action:@selector(handleMultiplication) forControlEvents:UIControlEventTouchUpInside];
    [multiplicationButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    multiplicationButton.titleLabel.font = [UIFont systemFontOfSize:50];
    [multiplicationButton.titleLabel setFont:[UIFont boldSystemFontOfSize:35.f]];
    [[multiplicationButton layer] setBorderWidth:2.0f];
    [[multiplicationButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:multiplicationButton];
    
    ////
    
    divisionButton = [[UIButton alloc]initWithFrame:CGRectMake((2.4*kHorizontalPadding)+(3*kAllUIElementHeight),175, kAllUIElementHeight, kAllUIElementHeight)];
    divisionButton.backgroundColor = [UIColor whiteColor];
    [divisionButton setTitle:@"/" forState:UIControlStateNormal];
    divisionButton.layer.cornerRadius = kAllUIElementHeight/2;
    [divisionButton addTarget:self action:@selector(handleDivision) forControlEvents:UIControlEventTouchUpInside];
    [divisionButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    divisionButton.titleLabel.font = [UIFont systemFontOfSize:50];
    [divisionButton.titleLabel setFont:[UIFont boldSystemFontOfSize:35.f]];
    [[divisionButton layer] setBorderWidth:2.0f];
    [[divisionButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:divisionButton];
    
    
    ////
    
    equalToButton = [[UIButton alloc]initWithFrame:CGRectMake((1.5*kHorizontalPadding)+(2.35*kAllUIElementHeight),325, kAllUIElementHeight, kAllUIElementHeight)];
    equalToButton.backgroundColor = [UIColor whiteColor];
    [equalToButton setTitle:@"=" forState:UIControlStateNormal];
    equalToButton.layer.cornerRadius = kAllUIElementHeight/2;
    [equalToButton addTarget:self action:@selector(handleResult) forControlEvents:UIControlEventTouchUpInside];
    [equalToButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    equalToButton.titleLabel.font = [UIFont systemFontOfSize:50];
    [equalToButton.titleLabel setFont:[UIFont boldSystemFontOfSize:35.f]];
    [[equalToButton layer] setBorderWidth:2.0f];
    [[equalToButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:equalToButton];
    
    
    ////
    clearButton1 = [[UIButton alloc]initWithFrame:CGRectMake(2*kHorizontalPadding+ 250, 100, kAllUIElementHeight, kAllUIElementHeight)];
    clearButton1.backgroundColor = [UIColor whiteColor];
    [clearButton1 setTitle:@"C" forState:UIControlStateNormal];
    [clearButton1 addTarget:self action:@selector(handleClear1) forControlEvents:UIControlEventTouchUpInside];
    [clearButton1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    clearButton1.titleLabel.font = [UIFont systemFontOfSize:20];
    [clearButton1.titleLabel setFont:[UIFont boldSystemFontOfSize:25.f]];
    [[clearButton1 layer] setBorderWidth:2.0f];
    [[clearButton1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:clearButton1];
    
    ////
    clearButton2 = [[UIButton alloc]initWithFrame:CGRectMake(2*kHorizontalPadding+ 250, 250, kAllUIElementHeight, kAllUIElementHeight)];
    clearButton2.backgroundColor = [UIColor whiteColor];
    [clearButton2 setTitle:@"C" forState:UIControlStateNormal];
    [clearButton2 addTarget:self action:@selector(handleClear2) forControlEvents:UIControlEventTouchUpInside];
    [clearButton2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    clearButton2.titleLabel.font = [UIFont systemFontOfSize:20];
    [clearButton2.titleLabel setFont:[UIFont boldSystemFontOfSize:25.f]];
    [[clearButton2 layer] setBorderWidth:2.0f];
    [[clearButton2 layer] setBorderColor:[UIColor blackColor].CGColor];
    [self.view addSubview:clearButton2];


    ////
    
    displayLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, 400, screenWidth - (2*kHorizontalPadding), kAllUIElementHeight)];
    displayLabel.backgroundColor = [UIColor cyanColor];
    displayLabel.textColor = [UIColor blackColor];
    displayLabel.textAlignment = NSTextAlignmentCenter;
    [displayLabel setFont:[UIFont boldSystemFontOfSize:20]];
    displayLabel.layer.borderColor = [UIColor orangeColor].CGColor;
    displayLabel.layer.borderWidth = 2;
    [self.view addSubview:displayLabel];
    
    ////

    errorLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, 450, screenWidth - (2*kHorizontalPadding), kAllUIElementHeight)];
    errorLabel.textColor = [UIColor whiteColor];
    errorLabel.textAlignment = NSTextAlignmentCenter;
    [errorLabel setFont:[UIFont boldSystemFontOfSize:20]];
    [self.view addSubview:errorLabel];
    
    
}


-(void) handleAddition{
    
    oper='+';
    //    float x= ([myTextField1.text floatValue]);
    //    float y=x+([myTextField2.text floatValue]);
    //    displayLabel.text=[[NSString alloc] initWithFormat:@"%2.f",y];
    NSString *currentValueString1 = myTextField1.text;
    NSString *currentValueString2 = myTextField2.text;
    float currentValueInt;
    float currentValueInt1 = currentValueString1.floatValue;
    float currentValueInt2 = currentValueString2.floatValue;
    currentValueInt = currentValueInt1+currentValueInt2;
    newValueString = [NSString stringWithFormat:@"%0.1f",currentValueInt];
        }

-(void) handleSubstraction{
    //    float x= ([myTextField1.text floatValue]);
    //    float y=x-([myTextField2.text floatValue]);
    //    displayLabel.text=[[NSString alloc] initWithFormat:@"%2.f",y];
    //
    oper='-';
    
    NSString *currentValueString1 = myTextField1.text;
    NSString *currentValueString2 = myTextField2.text;
    float currentValueInt;
    float currentValueInt1 = currentValueString1.floatValue;
    float currentValueInt2 = currentValueString2.floatValue;
    currentValueInt = currentValueInt1-currentValueInt2;
    newValueString = [NSString stringWithFormat:@"%0.1f",currentValueInt];
    
}
-(void) handleMultiplication{
    //    float x= ([myTextField1.text floatValue]);
    //    float y=x*([myTextField2.text floatValue]);
    //    displayLabel.text=[[NSString alloc] initWithFormat:@"%2.f",y];
    //
    oper='*';
    NSString *currentValueString1 = myTextField1.text;
    NSString *currentValueString2 = myTextField2.text;
    float currentValueInt;
    float currentValueInt1 = currentValueString1.floatValue;
    float currentValueInt2 = currentValueString2.floatValue;
    currentValueInt = currentValueInt1*currentValueInt2;
    newValueString = [NSString stringWithFormat:@"%0.1f",currentValueInt];
    
}
-(void) handleDivision{
    //    float x= ([myTextField1.text floatValue]);
    //    float y=x/([myTextField2.text floatValue]);
    //    displayLabel.text=[[NSString alloc] initWithFormat:@"%2.f",y];
    
    oper='/';
    NSString *currentValueString1 = myTextField1.text;
    NSString *currentValueString2 = myTextField2.text;
    float currentValueInt;
    float currentValueInt1 = currentValueString1.floatValue;
    float currentValueInt2 = currentValueString2.floatValue;
    currentValueInt = currentValueInt1/currentValueInt2;
    newValueString = [NSString stringWithFormat:@"%0.1f",currentValueInt];
    
}

-(BOOL) validateTextContent:(NSString *)content{
    
    if(content.length>0)
    {
        return YES;
        
    }
    else
    {
        return NO;
    }
}


-(void) handleResult{
    
    
    BOOL checkInput;
    NSString *inputText;
    inputText= myTextField1.text;
    checkInput= [ self validateTextContent:inputText];
    
    if(checkInput){
        switch (oper) {
        case '+':[self handleAddition];
            displayLabel.text = [NSString stringWithFormat: @"%@",newValueString];
            break;
        case '-':[self handleSubstraction];
            displayLabel.text = [NSString stringWithFormat: @"%@",newValueString];
            break;
        case '*':[self handleMultiplication];
            displayLabel.text = [NSString stringWithFormat: @"%@",newValueString];
            break;
        case '/':[self handleDivision];
            displayLabel.text = [NSString stringWithFormat: @"%@",newValueString];
            break;
            default:
            break;
    }
    
    
}
    else{
        displayLabel.text=@"";
        errorLabel.text=@"Error...Please enter number";
}
}

-(void) handleClear1{
    myTextField1.text=@"";
}
-(void)handleClear2{
    myTextField2.text=@"";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
