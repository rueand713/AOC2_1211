//
//  ViewController.h
//  project4
//
//  Created by Rueben Anderson on 11/14/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <undergroundRailroad>
{
    // outlet for the textView & swipeLabel interface objects
    IBOutlet UITextView *textView;
    IBOutlet UILabel *swipeLabel;
    
    // right swipe recognizer object
    UISwipeGestureRecognizer *rightSwiper;
}

// second view click handler
- (IBAction)onClick:(id)sender;

// swipe gesture handler
- (void)swipeControl;

@end
