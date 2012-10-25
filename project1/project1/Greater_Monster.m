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
        cpuWillUseItems = true;
    }
    
    return  self;
}

-(int)doTheMath:(float)rnd
{
    float calculation;
    calculation = ((dexterity * 2) + (agility * 2) ) * rnd;
    
    return (int)calculation;
}
@end
