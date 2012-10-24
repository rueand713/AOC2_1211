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
}

-(void)setAttributes:(int)setEnd setStr:(int)setStr setDex:(int)setDex setAgi:(int)setAgi setType:(NSString*)setType;
-(void)getAttributes;
-(int)calcToHit;
@end
