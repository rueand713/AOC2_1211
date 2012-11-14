//
//  ViewController.m
//  practicewk4
//
//  Created by Rueben Anderson on 11/13/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    originalFrame = topView.frame;
    isTopView = YES;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        // retrieve the user defaults value
        NSString *text = [defaults objectForKey:@"textField"];
        
        if (text != nil)
        {
            // set the user default value to the textField text
            textField.text = text;
        }
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender
{
    UIButton *thisBtn = (UIButton *)sender;
    if (thisBtn != nil)
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSURL *url = [NSURL URLWithString:@"http://www.github.com"];
        
        switch (thisBtn.tag) {
            case 0:
                if (isTopView)
                {
                    // start the animation
                    [UIView beginAnimations:nil context:nil];
                    
                    // set the animation duration
                    [UIView setAnimationDuration:1.5f];
                    
                    // if the top view is the current view move it to display the bottom view
                    topView.frame = CGRectMake(220.0f, 0.0f, topView.frame.size.width, topView.frame.size.height);
                    isTopView = NO;
                    
                    // end animation
                    [UIView commitAnimations];
                }
                else if (!isTopView)
                {
                    // start the animation
                    [UIView beginAnimations:nil context:nil];
                    
                    // set the animation duration
                    [UIView setAnimationDuration:1.5f];
                    
                    // if the bottom view is the current move the top view over it
                    topView.frame = originalFrame;
                    isTopView = YES;
                    
                    // end animation
                    [UIView commitAnimations];
                }
                break;
                
            case 1:
                    if (defaults != nil)
                    {
                        // create a string to pass into the defaults dictionary
                        NSString *textString = [[NSString alloc] initWithString:textField.text];
                        
                        // set the string in the dictionary
                        [defaults setObject:textString forKey:@"textField"];
                        
                        // save the data
                        [defaults synchronize];
                    }
                break;
                
            case 2:
                   if (url != nil)
                   {
                       // open the url in safari
                       [[UIApplication sharedApplication] openURL:url];
                   }
                break;
                
            default:
                break;
        }
    }
}

@end
