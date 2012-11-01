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
    float answer;
    NSInteger operation;
    float operandA;
    float operandB;
    NSInteger digitTracker;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChangeSwitch:(id)sender;
-(IBAction)onChangeSegment:(id)sender;
@end
