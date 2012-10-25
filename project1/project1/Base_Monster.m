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

// method used to set the string attributes of the class
-(void)setPersistentAttr:(NSString*)setType setName:(NSString*)setName;
{
    // set the string variable values to the new passed in values
    type = setType;
    name = setName;
}

// method used to set the integer attributes of the class
-(void)setDynamicAttr:(int)end str:(int)str dex:(int)dex agi:(int)agi
{
    // set the integer values to the new passed in values
    endurance = end;
    strength = str;
    dexterity = dex;
    agility = agi;
}

// method used to retrieve the string attribute values
// the integer variables are retrieved as OBJ-C property
-(NSString*)getAttributes:(int)stat
{
    switch (stat) {
        case NAME:
            return name;
            break;
            
        case TYPE:
            return type;
            break;
            
        case SPNAME:
            return specialname;
            
        default:
            break;
    }

    return nil;
}

// accessor method for calculating the "ToHit"
-(int)calcToHit
{
    // simulated "Random" number
    float randomPercent = 0.50f;
    
    // access private method to perform calculation
    int toHit = [self doTheMath:randomPercent];
    
    return toHit;
}

// the private method that actually performs the calculation
// performs a calculation based on two data members and a passed in argument
-(int)doTheMath:(float)rnd
{
    // determines toHit for BASE monster class only
    float calculation;
    calculation = (dexterity + agility) * rnd;
    
    return (int)calculation;
}
@end
