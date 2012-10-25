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

@synthesize endurance;
@synthesize strength;
@synthesize dexterity;
@synthesize agility;

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

-(void)setPersistentAttr:(NSString*)setType setName:(NSString*)setName;
{
    // set the string variable values to the new passed in values
    type = setType;
    name = setName;
}

-(void)setDynamicAttr:(int)end str:(int)str dex:(int)dex agi:(int)agi
{
    // set the integer values to the new passed in values
    endurance = end;
    strength = str;
    dexterity = dex;
    agility = agi;
}

-(void)getAttributes
{
    NSLog(@"NAME: %@ TYPE: %@ END: %d STR: %d DEX: %d AGI: %d", name, type, endurance, strength, dexterity, agility);
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
