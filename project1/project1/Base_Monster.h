//
//  Base_Monster.h
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Base_Monster : NSObject
{
    int endurance;
    int strength;
    int dexterity;
    int agility;
    NSString *type;     
    NSString *name;     
}


-(void)setPersistentAttr:(NSString*)setType setName:(NSString*)setName;
-(void)setDynamicAttr:(int)end str:(int)str dex:(int)dex agi:(int)agi;
-(void)getAttributes;
-(int)calcToHit;

@property int endurance;
@property int strength;
@property int dexterity;
@property int agility;

@end
