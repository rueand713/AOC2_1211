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

+(Base_Monster*)makeBasicMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        // instantiate a basic monster
        Base_Monster *basic = [[Base_Monster alloc] init];
        
        // set the name, type and monster attributes
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:25 str:10 dex:5 agi:5];
        
        // return the newly created basic monster
        return basic;
    }
    else if (type == 1)
    {
        // instantiate a basic monster
        Base_Monster *basic = [[Base_Monster alloc] init];
        
        // set the name, type and monster attributes
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:45 str:15 dex:10 agi:7];
        
        // return the newly created basic monster
        return basic;
    }
    else if (type == 2)
    {
        // instantiate a basic monster
        Base_Monster *basic = [[Base_Monster alloc] init];
        
        // set the name, type and monster attributes
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:65 str:30 dex:15 agi:12];
        
        // return the newly created basic monster
        return basic;
    }
    else if (type ==3)
    {
        // instantiate a basic monster
        Base_Monster *basic = [[Base_Monster alloc] init];
        
        // set the name, type and monster attributes
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:85 str:40 dex:25 agi:20];
        
        // return the newly created basic monster
        return basic;
    }
    
    return nil;
}

+(Lesser_Monster*)makeLesserMonster:(int)type name:(NSString*)name
{
    if (type == 0)
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
    else if (type == 1)
    {
        // instantiate a lesser monster
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        
        // set the name, type and monster attributes
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:10 str:7 dex:5 agi:6];
        
        // set the monster's unique member
        lesser.cpuCanResurrect = YES;
        
        // return the newly created monster
        return lesser;
    }
    else if (type == 2)
    {
        // instantiate a lesser monster
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        
        // set the name, type and monster attributes
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:20 str:12 dex:8 agi:10];
        
        // set the monster's unique member
        lesser.cpuCanResurrect = YES;
        
        // return the newly created monster
        return lesser;
    }
    else if (type ==3)
    {
        // instantiate a lesser monster
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        
        // set the name, type and monster attributes
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:35 str:20 dex:12 agi:15];
        
        // set the monster's unique member
        lesser.cpuCanResurrect = YES;
        
        // return the newly created monster
        return lesser;
    }
    
    return nil;
}

+(Greater_Monster*)makeGreaterMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        // instantiate a greater monster
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        
        // set the name, type and monster attributes
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:60 str:25 dex:10 agi:15];
        
        // set the monster's unique member
        greater.cpuWillUseItems = YES;
        
        // return the newly created greater monster
        return greater;
    }
    else if (type == 1)
    {
        // instantiate a greater monster
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        
        // set the name, type and monster attributes
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:80 str:40 dex:15 agi:20];
        
        // set the monster's unique member
        greater.cpuWillUseItems = YES;
        
        // return the newly created greater monster
        return greater;
    }
    else if (type == 2)
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
    else if (type ==3)
    {
        // instantiate a greater monster
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        
        // set the name, type and monster attributes
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:150 str:80 dex:50 agi:65];
        
        // set the monster's unique member
        greater.cpuWillUseItems = YES;
        
        // return the newly created greater monster
        return greater;
    }
    
    return nil;
}

+(Boss_Monster*)makeBossMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        // instantiate a boss monster
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        
        // set the name, type and monster attributes
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:100 str:65 dex:30 agi:45];
        
        // set the monster's unique member
        boss.willResurrectFallen = YES;
        
        // return the newly created boss monster
        return boss;
    }
    else if (type == 1)
    {
        // instantiate a boss monster
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        
        // set the name, type and monster attributes
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:200 str:120 dex:70 agi:90];
        
        // set the monster's unique member
        boss.willResurrectFallen = YES;
        
        // return the newly created boss monster
        return boss;
    }
    else if (type == 2)
    {
        // instantiate a boss monster
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        
        // set the name, type and monster attributes
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:400 str:250 dex:125 agi:150];
        
        // set the monster's unique member
        boss.willResurrectFallen = YES;
        
        // return the newly created boss monster
        return boss;
    }
    else if (type ==3)
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
    
    return nil;}
@end
