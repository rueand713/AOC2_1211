//
//  SecondViewController.h
//  testProject
//
//  Created by Rueben Anderson on 10/30/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UIStepper *stepper;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
@end
