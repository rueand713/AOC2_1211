//
//  ViewController.m
//  project2
//
//  Created by Rueben Anderson on 10/31/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    ADD = 0,
    SUBTRACT,
    MULTIPLY,
    DIVIDE,
    CLEAR
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
                
            case 1:
                break;
                
            case 2:
                break;
            
            case 3:
                
                break;
                
            case 4:
                break;
                
            case 5:
                break;
                
            case 6:
                
                break;
                
            case 7:
                break;
                
            case 8:
                break;
                
            case 9:
                break;
                
            case 10:
                break;
                
            case 11:
                break;
                
            case 12:
                break;
                
            case 13:
                break;
                
            case 14:
                break;
                
            default:
                break;
        }
    }
    else
    {
        UISwitch *numpad = (UISwitch *)sender;
        if (numpad != nil)
        {
            
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
