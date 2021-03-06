//
//  SecondViewController.h
//  project4
//
//  Created by Rueben Anderson on 11/14/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol undergroundRailroad <NSObject>

@required
// callback receiver
- (void)secondViewClosed:(NSString *)eventString;

@end

@interface SecondViewController : UIViewController
{
    // interface outlets
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UIButton *keypadBtn;
    IBOutlet UILabel *swipeLabel;
    
    // left swipe recognizer object
    UISwipeGestureRecognizer *leftSwiper;
    
    // save the button input from the alertview
    NSInteger buttonPressed;
    
    // delegate for the event callbacks
    id<undergroundRailroad> delegate;
}

// the button click handler
- (IBAction)onClick:(id)sender;

// swipe gesture handler
- (void)swipeControl;

// method used for capturing and stringing together the event data
- (NSString *)sendDataCart;

// keyboard notifications for showing and hiding
- (void)showKeyboard:(NSNotification *)notice;
- (void)hideKeyboard:(NSNotification *)notice;

@property (strong) id<undergroundRailroad> delegate;
@end
