//
//  ViewController.m
//  DerivativeCalculator
//
//  Created by Alain on 11/12/17.
//  Copyright © 2017 Alain. All rights reserved.
//

#import "ViewController.h"
#import <math.h>  

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _calculateButton.layer.borderWidth = 2.0f;
    _calculateButton.layer.backgroundColor = [UIColor yellowColor].CGColor;
    _calculateButton.layer.cornerRadius = 10;
    _calculateButton.clipsToBounds = YES;
    _calculateButton.layer.borderColor = [UIColor blueColor].CGColor;
    
    _clearButton.layer.borderWidth = 2.0f;
    _clearButton.layer.cornerRadius = 10;
    _clearButton.clipsToBounds = YES;
    _clearButton.layer.borderColor = [UIColor blueColor].CGColor;
    
    _coefficientTextfield.layer.borderWidth = 1.5f;
    _coefficientTextfield.layer.borderColor = [UIColor blackColor].CGColor;
   
    
    
    _variableTextfield.layer.borderWidth = 1.5f;
    _variableTextfield.layer.borderColor = [UIColor blackColor].CGColor;
    
    _chainFunctionButton.layer.borderWidth = 2.0f;
    _chainFunctionButton.layer.backgroundColor = [UIColor greenColor].CGColor;
    _chainFunctionButton.layer.cornerRadius = 10;
    _chainFunctionButton.clipsToBounds = YES;
    _chainFunctionButton.layer.borderColor = [UIColor blueColor].CGColor;


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)performCalcualtion:(id) sender{
    
    [self powerFunction];
    
}

- (IBAction)clearFields:(id)sender{
    
    _variableTextfield.text = @"";
    _coefficientTextfield.text = @"";
    _resultLabel.text = @"0";
    _variableLabel.text = @"0";
    
}

- (IBAction)performChainFunction:(id)sender{
    
    [self chainRule];
    
}
- (void)powerFunction{
    
    coefficient = ([_coefficientTextfield.text doubleValue]);
    variable = ([_variableTextfield.text doubleValue]);

    result = pow(coefficient, variable);
    _answer = [NSString stringWithFormat:@"%.0f", result];
    _resultLabel.text = _answer;
    _variableLabel.text = [NSString stringWithFormat:@"%.0f x^%.0f", coefficient, variable];
    
}

- (void)chainRule {
    
    coefficient = ([_coefficientTextfield.text doubleValue]);
    variable = ([_variableTextfield.text doubleValue]);
    
    result = coefficient * variable ;
    expo = variable - 1;
    _answer =[NSString stringWithFormat:@"%.0f x^%.0d", result, expo];
    _resultLabel.text = _answer;
}



@end
