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
    NSInteger operation;
    NSString *answer;
    NSString *operandA;
    NSString *operandB;
}

-(IBAction)onClick:(id)sender;
@end
