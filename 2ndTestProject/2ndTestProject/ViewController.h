//
//  ViewController.h
//  2ndTestProject
//
//  Created by Rueben Anderson on 11/6/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    IBOutlet UIPickerView *picker;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@end
