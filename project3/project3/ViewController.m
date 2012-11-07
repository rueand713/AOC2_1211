//
//  ViewController.m
//  project3
//
//  Created by Rueben Anderson on 11/7/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// handles the click functionaity of the "add event" button
// when clicked it will call instantiate the next view and present it
- (IBAction)onClick:(id)sender
{
    // create the addEvent object for the second view from the SecondViewController class
    SecondViewController *addEvent = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    // set the delegate receiving object
    addEvent.delegate = self;
    
    // call the second view
    [self presentViewController:addEvent animated:YES completion:nil];
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

@end
