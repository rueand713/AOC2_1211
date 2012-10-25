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
        cpuCanResurrect = true;
    }
    
    return  self;
}

-(int)doTheMath:(float)rnd
{
    float calculation;
    calculation = ((dexterity / 2) + (agility / 2) ) * rnd;
    
    return (int)calculation;
}
@end
