//
//  ViewController2.m
//  2ndTestProject
//
//  Created by Rueben Anderson on 11/6/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
    UIButton *thisBtn = (UIButton *)sender;
    if (thisBtn != nil)
    {
        if (thisBtn.tag == 0)
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        else if (thisBtn.tag == 1)
        {
           // NSString *txt = textView.text;
            //NSLog(@"%@", txt);
        }
    }
}

@end
