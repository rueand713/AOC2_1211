//
//  Base_Monster.h
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

// typedef for better readability and flow of attribute handling
typedef enum {
    END = 0,
    STR,
    DEX,
    AGI,
    NAME,
    TYPE,
    SPNAME
} constStats;

// typedef for monster level targetting within each class
// the factory can make 4 of each class with increasing difficulty
// this enum represents that difficulty and NOT the class itself
typedef enum {
    LESSER = 0,
    BASE,
    GREATER,
    BOSS
} monsterLvClass;


@interface Base_Monster : NSObject
{
    int endurance;
    int strength;
    int dexterity;
    int agility;
    NSString *type;     
    NSString *name;
    NSString *specialname;
}


-(void)setPersistentAttr:(NSString*)setType setName:(NSString*)setName;
-(void)setDynamicAttr:(int)end str:(int)str dex:(int)dex agi:(int)agi;
-(NSString*)getAttributes:(int)stat;
-(int)doTheMath:(float)rnd;

@property int endurance;
@property int strength;
@property int dexterity;
@property int agility;

@end
