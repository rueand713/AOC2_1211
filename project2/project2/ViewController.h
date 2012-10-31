//
//  ViewController.h
//  project2
//
//  Created by Rueben Anderson on 10/31/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *answerField;
    IBOutlet UISwitch *isSwitchOn;
    
    BOOL firstField;
    BOOL switchWasOff;
    BOOL afterEQ;
    NSInteger answer;
    NSInteger operation;
    NSInteger operandA;
    NSInteger operandB;
    NSInteger digitTracker;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChangeSwitch:(id)sender;
-(IBAction)onChangeSegment:(id)sender;
@end
