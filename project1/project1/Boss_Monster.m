//
//  Boss_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Boss_Monster.h"

@interface Boss_Monster()
    -(int)doTheMath:(float)rnd;
@end

@implementation Boss_Monster

@synthesize willResurrectFallen;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        // set the unique member name for referencing
        specialname = @"willResurrectFallen";
        
        // initiates as NO so it can be set manually during object instantiation
        willResurrectFallen = NO;
    }
    
    return  self;
}

// performs a calculation based on two data members and a passed in argument
// this method overrides the inherited variant
-(int)doTheMath:(float)rnd
{
    // determines the ToHit of BOSS monsters
    // the calculation vastly improves the requirements to land
    // a successful hit to a boss monster thus increasing the difficulty
    // expected when engaged in a boss fight.
    float calculation;
    calculation = ((dexterity * 2) + (agility * 2) ) * (rnd * 2);
    
    return (int)calculation;
}
@end
