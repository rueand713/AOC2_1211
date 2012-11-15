//
//  ViewController.m
//  project4
//
//  Created by Rueben Anderson on 11/14/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    // initialize the rightSwiper object
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeControl)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    
    // add the right swipe gesture recognition to the label
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// handles the click functionaity of the "save" button
// when clicked it will save the data of the textView into the NSUserDefaults
- (IBAction)onClick:(id)sender
{
    // create a NSUserDefaults object for storing and manipulating the events
    NSUserDefaults *textData = [NSUserDefaults standardUserDefaults];
    if (textData != nil)
    {
        // store the textView text into a temp string
        NSString *textString = textView.text;
        
        // store the text from the textView into the NSUser defaults
        [textData setObject:textString forKey:@"Events"];
        
        // save out the data
        [textData synchronize];
    }
}

// the delegate handler
// takes a formatted string of the event data and appends it to the UITextView
- (void)secondViewClosed:(NSString *)eventString
{
    // store the textView text for appending
    NSMutableString *newString = [[NSMutableString alloc] initWithFormat:@"%@", textView.text];
    
    // append the passed in event string to the end of
    // the copied textView text
    [newString appendString:eventString];
    
    // set the new text to the textView
    textView.text = newString;
}

// when triggered it will call instantiate the next view and present it
-(void)swipeControl
{
    // create the addEvent object for the second view from the SecondViewController class
    SecondViewController *addEvent = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    // set the delegate receiving object
    addEvent.delegate = self;
    
    // call the second view
    [self presentViewController:addEvent animated:YES completion:nil];
}

@end