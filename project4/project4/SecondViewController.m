//
//  SecondViewController.m
//  project4
//
//  Created by Rueben Anderson on 11/14/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "SecondViewController.h"

typedef enum {
    SAVE = 0,
    CLOSEKB
} addEventBtns;

@implementation SecondViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    // initialize my leftSwiper object
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeControl)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    
    // add the left swipe gesture recognition to the label
    [swipeLabel addGestureRecognizer:leftSwiper];
    
    // create a date object with the current date and time
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    
    // set the minimum date for the datePicker to the current date
    // set the date picker date and time to the new date object date and time
    datePicker.minimumDate = date;
    datePicker.date = date;
    
    // hide the close keyboard button
    keypadBtn.hidden = YES;
    
    // listen for keyboard show notification and calls a function in response
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    
    // listen for keyboard hide notification and calls a function in response
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// the clicking  method for the interface UIButton
- (IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button != nil)
    {
        // close the keyboard
        [textField resignFirstResponder];
    }
}

// gets formats and appends the data information from the date picker
// returns a formatted date NSString object for the delegate
-(NSString *)sendDataCart
{
    // get the date and time from the date picker object
    NSDate *gotDate = datePicker.date;
    
    // create a NSString object that will hold the date formatted string
    NSString *dateTxt = [[NSString alloc] init];
    
    // create a dateFormatter object to format the date picker data
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    if (dateFormat != nil)
    {
        // set the date's format
        [dateFormat setDateFormat:@"EEE, MMM d, yyyy HH:mm:SS zzz"];
        
        // set the formatted date string to the dateTxt variable
        dateTxt = [dateFormat stringFromDate:gotDate];
    }
    
    // create a formatted event string to be returned for the delegate
    NSString *newEventInfo = [[NSString alloc] initWithFormat:@"New Event: %@\n%@\n\n", textField.text, dateTxt];
    
    return newEventInfo;
}

-(void)showKeyboard:(NSNotification *)notice
{
    // shows the close keyboard button
    keypadBtn.hidden = NO;
}

-(void)hideKeyboard:(NSNotification *)notice
{
    // hides the close keyboard button
    keypadBtn.hidden = YES;
}

// when triggered it will close current view and pass a
// formatted string to the delegate
-(void)swipeControl
{
    // create a characterset object for whitepsaces based on the Apple developer site
    /* http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/Strings/Articles/CharacterSets.html#//apple_ref/doc/uid/20000146-BAJBJHCG
    */
    NSCharacterSet *whiteSpaces = [NSCharacterSet whitespaceCharacterSet];
    
    // create a temp string for holding a white space trimmed textfield text
    NSString *stringTrimmer = [[NSString alloc] initWithString: textField.text];
    stringTrimmer = [stringTrimmer stringByTrimmingCharactersInSet: whiteSpaces];
    
    // checks if the whitespace trimmed string is still valid
    // by looking for an empty set
    BOOL emptyCheck = [stringTrimmer isEqualToString:@""];
    
    // check if the delegate is created properly
    if (delegate != nil)
    {
        if (emptyCheck == NO)
        {
            // create an empty string to hold the event text
            NSString *eventString = [[NSString alloc] init];
            
            // set fetched formatted event string to the eventString variable
            eventString = [self sendDataCart];
            
            // communicate data back with 1st view
            [delegate secondViewClosed:eventString];
        }
    }
    
    // dissmiss the current view
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
