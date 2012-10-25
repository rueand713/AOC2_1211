//
//  Lesser_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Lesser_Monster.h"

@interface Lesser_Monster()
    -(int)doTheMath:(float)rnd;
@end

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
-(int)doTheMath:(float)rnd
{
    // determines the ToHit for LESSER monsters
    // the calculation will severly reduce the toHit value
    // increasing how easy it will be to land a successful strike
    float calculation;
    calculation = ((dexterity / 2) + (agility / 2) ) * rnd;
    
    return (int)calculation;
}
@end
