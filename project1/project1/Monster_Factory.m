//
//  Monster_Factory.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Monster_Factory.h"


@implementation Monster_Factory

-(id)init
{
    self = [super init];
    
    return self;
}

+(Base_Monster*)makeMonster:(int)type name:(NSString*)name
{
    if (type == LESSER)
    {
        // instantiate a lesser monster
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        
        // set the name, type and monster attributes
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:5 str:2 dex:1 agi:4];
        
        // set the monster's unique member
        lesser.cpuCanResurrect = YES;
        
        // return the newly created monster
        return lesser;
    }
    else if (type == BASE)
    {
        // instantiate a basic monster
        Base_Monster *basic = [[Base_Monster alloc] init];
        
        // set the name, type and monster attributes
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:45 str:15 dex:10 agi:7];
        
        // return the newly created basic monster
        return basic;
    }
    else if (type == GREATER)
    {
        // instantiate a greater monster
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        
        // set the name, type and monster attributes
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:100 str:60 dex:30 agi:40];
        
        // set the monster's unique member
        greater.cpuWillUseItems = YES;
        
        // return the newly created greater monster
        return greater;
    }
    else if (type == BOSS)
    {
        // instantiate a boss monster
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        
        // set the name, type and monster attributes
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:800 str:500 dex:300 agi:250];
        
        // set the monster's unique member
        boss.willResurrectFallen = YES;
        
        // return the newly created boss monster
        return boss;
    }
    
    return nil;
}
@end
