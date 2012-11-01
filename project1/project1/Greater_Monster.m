//
//  Greater_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Greater_Monster.h"

@implementation Greater_Monster

@synthesize cpuWillUseItems;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        // set the unique member name for referencing
        specialname = @"cpuWillUseItems";
        
        // initiates as NO so it can be set manually during object instantiation
        cpuWillUseItems = NO;
    }
    
    return  self;
}

// performs a calculation based on two data members and a passed in argument
// this method overrides the inherited variant
-(float)doTheMath:(float)rnd
{
    // calculate the chance the monster will choose to use
    // an item from its surroundings
    float useItemChance = 0;
    
    if (self.cpuWillUseItems)
    {
        useItemChance = ((strength * rnd) / (dexterity * 2)) * rnd;
        useItemChance *= 100;
        if (useItemChance > 100)
        {
            useItemChance = 100;
        }
    }
    
    return useItemChance;
}
@end
