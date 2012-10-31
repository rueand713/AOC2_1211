//
//  ViewController.m
//  testProject
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "testClass.h"
#import "Triangle.h"
#import "Square.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    testClass *initClass = [[testClass alloc] init];
    if (initClass != nil)
    {
        [initClass accessorMethod:DEFMSG];
        [initClass accessorMethod:SETATTR];
        [initClass accessorMethod:PRNTATTR];
    }
    
    Triangle *triangle = [[Triangle alloc] init];
    if (triangle != nil)
    {
        [triangle printNumSides];
    }
    
    Square *square = [[Square alloc] init];
    if (square != nil)
    {
        [square printNumSides];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onOpen:(id)sender
{
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    [self presentViewController:secondViewController animated:YES completion:nil];
}

@end
