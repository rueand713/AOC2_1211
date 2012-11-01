//
//  ViewController.m
//  project2
//
//  Created by Rueben Anderson on 10/31/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController()
    -(void)callSecondView;
@end

typedef enum {
    EQUAL = 10,
    SUBTRACT,
    ADD,
    MULTIPLY,
    DIVIDE,
    CLEAR,
    INFO,
    NONE
} operations;

typedef enum {
    WHITE = 0,
    BLUE,
    GREEN
} colordef;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    // set defaults
    answer = 0;
    operandA = 0;
    operandB = 0;
    digitTracker = 1;
    firstField = YES;
    switchWasOff = NO;
    afterEQ = YES;
    
    // lengthen the height of the textField
    answerField.frame = CGRectMake(answerField.frame.origin.x, answerField.frame.origin.y, answerField.frame.size.width, 35.0f);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIButton *numpad = (UIButton *)sender;
    if (numpad != nil && isSwitchOn.on)
    {
        switch (numpad.tag) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                // numeral buttons 0 - 9
                
                if (firstField)
                {
                    // sets the current operand single or multiple digit format based on x = (x * i) + n
                    if (numpad.tag != 0)
                    {
                        operandA = (operandA * digitTracker) + numpad.tag;
                    }
                    else if (numpad.tag == 0)
                    {
                        // if adding a zero multiply by ten to reflect the added zero end value
                        operandA = (operandA * 10);
                    }
                    
                    // store the string version of the operandA
                    NSString *stringCurrentInput = [[NSString alloc] initWithFormat:@"%d", (int)operandA];
                    
                    // show the current value being input in textField
                    answerField.text = stringCurrentInput;
                    
                    // update the digitTracker for multiple digit operations
                    digitTracker = 10;
                    
                    afterEQ = NO;
                }
                else
                {
                    // sets the current operand single or multiple digit format based on x = (x * i) + n
                    if (numpad.tag != 0)
                    {
                        operandB = (operandB * digitTracker) + numpad.tag;
                    }
                    else if (numpad.tag == 0)
                    {
                        // if adding a zero multiply by ten to reflect the added zero end value
                        operandB = (operandB * 10);
                    }
                    
                    // store the string version of the operandB
                    NSString *stringCurrentInput = [[NSString alloc] initWithFormat:@"%d", (int)operandB];
                    
                    // show the current value being input in textField
                    answerField.text = stringCurrentInput;
                    
                    // update the digitTracker for multiple digit operations
                    digitTracker = 10;
                    
                    afterEQ = NO;
                }
                break;
                
            case EQUAL:
                if (operation == ADD)
                {
                    // store an integer value of the operands
                    answer = operandA + operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", (int)answer];
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = strAnswer;
                }
                else if (operation == SUBTRACT)
                {
                    // store an integer value of the operands
                    answer = operandA - operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", (int)answer];
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = strAnswer;
                    
                }
                else if (operation == MULTIPLY)
                {
                    // store an integer value of the operands
                    answer = operandA * operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", (int)answer];
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = strAnswer;
                }
                else if (operation == DIVIDE)
                {
                    // store an integer value of the operands
                    answer = operandA / operandB;
                    float remainderCheck = answer / (int)answer;
                    
                    NSString *strAnswer;
                    
                    // do a remainder check for the float value
                    // create a formatted string to pass into the answer variable for storing based on rather there is a remainder present or not for formatting
                    if (remainderCheck == 1)
                    {
                        strAnswer = [[NSString alloc] initWithFormat:@"%d", (int)answer];
                    }
                    else
                    {
                        strAnswer = [[NSString alloc] initWithFormat:@"%f", answer];
                    }
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = strAnswer;
                }
                
                // reset operands and operator
                operandA = 0;
                operandB = 0;
                operation = NONE;
                firstField = YES;
                afterEQ = YES;
                break;
                
            case SUBTRACT:
                if (afterEQ == NO)
                {
                // set the operation variable and reset the digitTracker
                operation = SUBTRACT;
                digitTracker = 1;
                firstField = NO;
                }
                break;
                
            case ADD:
                if (afterEQ == NO)
                {
                // set the operation variable and update the digitTracker
                // for the next multiple digit input
                operation = ADD;
                digitTracker = 1;
                firstField = NO;
                }
                break;
                
            case MULTIPLY:
                if (afterEQ == NO)
                {
                // set the operation variable and update the digitTracker
                // for the next multiple digit input
                operation = MULTIPLY;
                digitTracker = 1;
                firstField = NO;
                }
                break;
                
            case DIVIDE:
                if (afterEQ == NO)
                {
                // set the operation variable and update the digitTracker
                // for the next multiple digit input
                operation = DIVIDE;
                digitTracker = 1;
                firstField = NO;
                }
                break;
                
            case INFO:
                // call the second view calling method
                [self callSecondView];
                break;
                
            case CLEAR:
                // reset the calculator
                answerField.text = @"0";
                operandA = 0;
                operandB = 0;
                answer = 0;
                operation = NONE;
                digitTracker = 1;
                firstField = YES;
                afterEQ = YES;
            default:
                break;
        }
    }
}

-(IBAction)onChangeSwitch:(id)sender
{
    UISwitch *switchBtn = (UISwitch *)sender;
    
    if (switchBtn != nil)
    {
        if (isSwitchOn.on && switchWasOff)
        {
            // switch was off so but now its on so reset the calculator
            answerField.text = @"0";
            operandA = 0;
            operandB = 0;
            answer = 0;
            operation = NONE;
            digitTracker = 1;
            firstField = YES;
            switchWasOff = NO;
            afterEQ = YES;
        }
        else
        {
            // tracking the state of the switch button
            // turning it on after it was off triggers the reset
            switchWasOff = YES;
        }
    }
}

-(IBAction)onChangeSegment:(id)sender
{
    UISegmentedControl *segCtrl = (UISegmentedControl *)sender;
    
    if (segCtrl != nil)
    {
        // grab the segmentedControl index
        int segmentIndex = segCtrl.selectedSegmentIndex;
        
        // change the color based on the current index of the segCtrl
        switch (segmentIndex) {
            case BLUE:
                self.view.backgroundColor = [UIColor blueColor];
                break;
                
            case GREEN:
                self.view.backgroundColor = [UIColor greenColor];
                break;
                
            case WHITE:
            default:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
        }
    }

}

-(void)callSecondView
{
    // create the second view controller object
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    // present the second view
    [self presentViewController:secondViewController animated:YES completion:nil];
}
@end
