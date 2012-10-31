//
//  SecondViewController.m
//  testProject
//
//  Created by Rueben Anderson on 10/30/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)onChange:(id)sender
{
    UIStepper *stepperControl = (UIStepper *)sender;
    if (stepperControl != nil)
    {
        int stepperValue = stepperControl.value;
        NSLog(@"The current value is %d", stepperValue);
    }
}

@end
