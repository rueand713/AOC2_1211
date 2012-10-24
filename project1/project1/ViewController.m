//
//  ViewController.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "Base_Monster.h"
#import "Lesser_Monster.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    Base_Monster *bandit = [[Base_Monster alloc] init];
    if (bandit != nil)
    {
        [bandit getAttributes];
        int bandHit = [bandit calcToHit];
        NSLog(@"Bandit toHit: %d", bandHit);
    }
    
    Lesser_Monster *demonic_rabbit = [[Lesser_Monster alloc] init];
    if (demonic_rabbit != nil)
    {
        [demonic_rabbit getAttributes];
        int derabHit = [demonic_rabbit calcToHit];
        NSLog(@"Demonic Rabbit toHit: %d", derabHit);
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
