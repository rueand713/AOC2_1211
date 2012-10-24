//
//  Base_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Base_Monster.h"

@interface Base_Monster()
    -(int)doTheMath:(float)rnd;
@end

@implementation Base_Monster

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        endurance = 35;
        strength = 5;
        dexterity = 3;
        agility = 7;
        type = [[NSString alloc] initWithString:@"Basic"];
    }
    
    return self;
}

-(void)setAttributes:(int)setEnd setStr:(int)setStr setDex:(int)setDex setAgi:(int)setAgi setType:(NSString*)setType
{
    // set the default variable values to the new passed in values
    endurance = setEnd;
    strength = setStr;
    dexterity = setDex;
    agility = setAgi;
    type = setType;
}

-(void)getAttributes
{
    NSLog(@"TYPE: %@ END: %d STR: %d DEX: %d AGI: %d", type, endurance, strength, dexterity, agility);
}

-(int)calcToHit
{
    float randomPercent = 0.50f;
    
    // access private method to perform calculation
    int toHit = [self doTheMath:randomPercent];
    
    return toHit;
}

-(int)doTheMath:(float)rnd
{
    float calculation;
    calculation = (dexterity + agility) * rnd;
    
    return (int)calculation;
}
@end
