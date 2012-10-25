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
        willResurrectFallen = true;
    }
    
    return  self;
}

-(int)doTheMath:(float)rnd
{
    float calculation;
    calculation = ((dexterity * 2) + (agility * 2) ) * (rnd * 2);
    
    return (int)calculation;
}
@end
