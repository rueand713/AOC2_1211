//
//  ViewController.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "Monster_Factory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    Monster_Factory *monsterMachine = [[Monster_Factory alloc] init];
    if (monsterMachine != nil)
    {
        Lesser_Monster *demonic_rabbit = [monsterMachine makeLesserMonster:0 name:@"Demonic Rabbit"];
        Base_Monster *bandit = [monsterMachine makeBasicMonster:1 name:@"Bandit"];
        Greater_Monster *chaos_wizard = [monsterMachine makeGreaterMonster:2 name:@"Chaos Wizard"];
        Boss_Monster *dark_underlord = [monsterMachine makeBossMonster:3 name:@"Dark Underlord"];
    
        if (demonic_rabbit != nil)
        {
            [demonic_rabbit getAttributes];
            int derabHit = [demonic_rabbit calcToHit];
            NSLog(@"Demonic Rabbit's toHit: %d. cpuCanResurrect: %@", derabHit, demonic_rabbit.cpuCanResurrect ? @"YES" : @"NO");
        }
    
        if (bandit != nil)
        {
            [bandit getAttributes];
            int bandHit = [bandit calcToHit];
            NSLog(@"Bandit's toHit: %d.", bandHit);
        }
    
        if (chaos_wizard != nil)
        {
            [chaos_wizard getAttributes];
            int chaosWizHit = [chaos_wizard calcToHit];
            NSLog(@"Chaos Wizard's toHit: %d. cpuWillUseItems: %@", chaosWizHit, chaos_wizard.cpuWillUseItems ? @"YES" : @"NO");
        }
    
        if (dark_underlord != nil)
        {
            [dark_underlord getAttributes];
            int darkUnderHit = [dark_underlord calcToHit];
            NSLog(@"Dark Underlord's toHit: %d. WillResurrectFallen: %@", darkUnderHit, dark_underlord.willResurrectFallen ? @"YES" : @"NO");
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

@end
