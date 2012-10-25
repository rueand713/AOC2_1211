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
#import "Greater_Monster.h"
#import "Boss_Monster.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    Lesser_Monster *demonic_rabbit = [[Lesser_Monster alloc] init];
    if (demonic_rabbit != nil)
    {
        [demonic_rabbit getAttributes];
        int derabHit = [demonic_rabbit calcToHit];
        NSLog(@"Demonic Rabbit toHit: %d. cpuCanResurrect: %@", derabHit, demonic_rabbit.cpuCanResurrect ? @"YES" : @"NO");
    }
    
    Base_Monster *bandit = [[Base_Monster alloc] init];
    if (bandit != nil)
    {
        [bandit getAttributes];
        int bandHit = [bandit calcToHit];
        NSLog(@"Bandit toHit: %d.", bandHit);
    }
    
    Greater_Monster *chaos_wizard = [[Greater_Monster alloc] init];
    if (chaos_wizard != nil)
    {
        [chaos_wizard getAttributes];
        int chaosWizHit = [chaos_wizard calcToHit];
        NSLog(@"Chaos Wizard toHit: %d. cpuWillUseItems: %@", chaosWizHit, chaos_wizard.cpuWillUseItems ? @"YES" : @"NO");
    }
    
    Boss_Monster *dark_underlord = [[Boss_Monster alloc] init];
    if (dark_underlord != nil)
    {
        [dark_underlord getAttributes];
        int darkUnderHit = [dark_underlord calcToHit];
        NSLog(@"Dark Underlord toHit: %d. WillResurrectFallen: %@", darkUnderHit, dark_underlord.willResurrectFallen ? @"YES" : @"NO");
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
