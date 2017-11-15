//
//  ViewController.h
//  DerivativeCalculator
//
//  Created by Alain on 11/12/17.
//  Copyright © 2017 Alain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <math.h>

@interface ViewController : UIViewController

{
   double coefficient;
   double variable;
   double result;
    int expo;
    
}

@property(nonatomic)NSString *answer;
@property(nonatomic)NSString *entered;

@property(weak, nonatomic)IBOutlet UILabel *resultLabel;
@property(weak, nonatomic)IBOutlet UILabel *variableLabel;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIButton *chainFunctionButton;

@property(weak, nonatomic)IBOutlet UITextField *variableTextfield;

@property(weak, nonatomic)IBOutlet UITextField *coefficientTextfield;

- (IBAction)performCalcualtion:(id) sender;
- (IBAction)clearFields:(id)sender;
- (void)powerFunction;




@end

