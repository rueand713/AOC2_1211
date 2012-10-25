//
//  Greater_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Greater_Monster.h"

@interface Greater_Monster()
    -(int)doTheMath:(float)rnd;
@end

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
-(int)doTheMath:(float)rnd
{
    // determines the ToHit for GREATER monsters
    // this will vastly increase the difficulty of landing a
    // successful strike to the greater monsters
    float calculation;
    calculation = ((dexterity * 2) + (agility * 2) ) * rnd;
    
    return (int)calculation;
}
@end
