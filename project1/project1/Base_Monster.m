//
//  Base_Monster.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Base_Monster.h"

@implementation Base_Monster

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        endurance = 15;
        strength = 3;
        defence = 1;
        speed = 5;
    }
    
    return self;
}

-(void)setAttributes:(int)setEnd setStr:(int)setStr setDef:(int)setDef setSpd:(int)setSpd setName:(NSString*)setName
{
    // set the default variable values to the new passed in values
    endurance = setEnd;
    strength = setStr;
    defence = setDef;
    speed = setSpd;
    name = setName;
}

-(void)getAttributes
{
    NSLog(@"NAME: %@ /n END: %d /n STR: %d /n DEF: %d /n SPD: %d /n", name, endurance, strength, defence, speed);
}
@end
