//
//  Boss_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Boss_Monster.h"

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
-(float)doTheMath:(float)rnd
{
    // calculate the chance the boss will attempt to resurrect
    // a fallen minion.
    float chanceWillRes = 0;
    
    if (self.willResurrectFallen)
    {
        chanceWillRes = (((strength + endurance) * (rnd / 2)) / (dexterity * 1.5f)) * rnd;
        chanceWillRes *= 100;
        
        if (chanceWillRes > 100)
        {
            chanceWillRes = 100;
        }
    }
    
    return chanceWillRes;
}
@end
