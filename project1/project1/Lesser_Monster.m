//
//  Lesser_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Lesser_Monster.h"

@implementation Lesser_Monster

@synthesize cpuCanResurrect;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        // set the unique member name for referencing
        specialname = @"cpuCanResurrect";
        
        // initiates as NO so it can be set manually during object instantiation
        cpuCanResurrect = NO;
    }
    
    return  self;
}

// performs a calculation based on two data members and a passed in argument
// this method overrides the inherited variant
-(float)doTheMath:(float)rnd
{
    // calculate the chance the monster will be
    // resurrected successfully if attempt is made.
    float resChance = 0;
    
    if (self.cpuCanResurrect)
    {
        resChance = ((dexterity * (rnd * 4)) / (agility * 2)) * rnd;
        resChance *= 100;
        if (resChance > 100)
        {
            resChance = 100;
        }
    }
    
     return resChance;
}
@end
