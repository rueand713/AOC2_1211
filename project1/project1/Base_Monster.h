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
    int defence;
    int speed;
    NSString *name;
}

-(void)setAttributes:(int)setEnd setStr:(int)setStr setDef:(int)setDef setSpd:(int)setSpd setName:(NSString*)setName;
-(void)getAttributes;
@end
