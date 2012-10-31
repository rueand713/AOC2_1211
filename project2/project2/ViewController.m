//
//  ViewController.m
//  project2
//
//  Created by Rueben Anderson on 10/31/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    EQUAL = 10,
    SUBTRACT,
    ADD,
    MULTIPLY,
    DIVIDE,
    CLEAR,
    INFO,
    SEGMENT,
    SWITCHBTN,
    NONE
} operations;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // set defaults
    answer = @"";
    operandA = @"";
    operandB = @"";
    
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
    if (numpad != nil && isSwitchOn)
    {
        NSString *thisValue = [[NSString alloc] initWithFormat:@"%d", numpad.tag];
        
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
                    // concatenates the string value of the current button to first operand
                    [operandA stringByAppendingString:thisValue];
                }
                else
                {
                    // concatenates the string value of the current button to the second operand
                    [operandB stringByAppendingString:thisValue];
                }
                break;
                
            case EQUAL:
                if (operation == ADD)
                {
                    // store an integer value of the operands after casting them in INT types
                    int answerValue = (int)operandA + (int)operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", answerValue];
                    
                    // stores the stringed answer for possible retrieval
                    answer = strAnswer;
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = answer;
                }
                else if (operation == SUBTRACT)
                {
                    // store an integer value of the operands after casting them in INT types
                    int answerValue = (int)operandA - (int)operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", answerValue];
                    
                    // stores the stringed answer for possible retrieval
                    answer = strAnswer;
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = answer;
                }
                else if (operation == MULTIPLY)
                {
                    // store an integer value of the operands after casting them in INT types
                    int answerValue = (int)operandA * (int)operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", answerValue];
                    
                    // stores the stringed answer for possible retrieval
                    answer = strAnswer;
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = answer;
                }
                else if (operation == DIVIDE)
                {
                    // store an integer value of the operands after casting them in INT types
                    int answerValue = (int)operandA / (int)operandB;
                    
                    // create a formatted string to pass into the answer variable for storing
                    NSString *strAnswer = [[NSString alloc] initWithFormat:@"%d", answerValue];
                    
                    // stores the stringed answer for possible retrieval
                    answer = strAnswer;
                    
                    // sets the answer UITextfield to the answer text
                    answerField.text = answer;
                }
                break;
                
            case SUBTRACT:
                // set the operation variable
                operation = SUBTRACT;
                break;
                
            case ADD:
                // set the operation variable
                operation = ADD;
                break;
                
            case MULTIPLY:
                // set the operation variable
                operation = MULTIPLY;
                break;
                
            case DIVIDE:
                // set the operation variable
                operation = DIVIDE;
                break;
                
            case CLEAR:
                // reset the calculator
                answerField.text = @"";
                operandA = @"";
                operandB = @"";
                operation = NONE;
            default:
                break;
        }
    }
    else
    {
        UISwitch *numpad = (UISwitch *)sender;
        if (numpad != nil)
        {
            if (isSwitchOn.on)
            {
                // switch is on so turn it off
                isSwitchOn.on = FALSE;
            }
            else
            {
                // switch is off so turn it on
                isSwitchOn.on = TRUE;

                // and reset the calculator
                answerField.text = @"";
                operandA = @"";
                operandB = @"";
                operation = NONE;
            }
        }
        else
        {
            UISegmentedControl *numpad = (UISegmentedControl *)sender;
            if (numpad != nil)
            {
                
            }
        }
    }
}
@end
