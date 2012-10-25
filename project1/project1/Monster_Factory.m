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

-(Base_Monster*)makeBasicMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        Base_Monster *basic = [[Base_Monster alloc] init];
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:25 str:10 dex:5 agi:5];
        return basic;
    }
    else if (type == 1)
    {
        Base_Monster *basic = [[Base_Monster alloc] init];
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:45 str:15 dex:10 agi:7];
        return basic;
    }
    else if (type == 2)
    {
        Base_Monster *basic = [[Base_Monster alloc] init];
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:65 str:30 dex:15 agi:12];
        return basic;
    }
    else if (type ==3)
    {
        Base_Monster *basic = [[Base_Monster alloc] init];
        [basic setPersistentAttr:@"Basic" setName:name];
        [basic setDynamicAttr:85 str:40 dex:25 agi:20];
        return basic;
    }
    
    return nil;
}

-(Lesser_Monster*)makeLesserMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:5 str:2 dex:1 agi:4];
        return lesser;
    }
    else if (type == 1)
    {
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:10 str:7 dex:5 agi:6];
        return lesser;
    }
    else if (type == 2)
    {
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:20 str:12 dex:8 agi:10];
        return lesser;
    }
    else if (type ==3)
    {
        Lesser_Monster *lesser = [[Lesser_Monster alloc] init];
        [lesser setPersistentAttr:@"Lesser" setName:name];
        [lesser setDynamicAttr:35 str:20 dex:12 agi:15];
        return lesser;
    }
    
    return nil;
}

-(Greater_Monster*)makeGreaterMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:60 str:25 dex:10 agi:15];
        return greater;
    }
    else if (type == 1)
    {
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:80 str:40 dex:15 agi:20];
        return greater;
    }
    else if (type == 2)
    {
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:100 str:60 dex:30 agi:40];
        return greater;
    }
    else if (type ==3)
    {
        Greater_Monster *greater = [[Greater_Monster alloc] init];
        [greater setPersistentAttr:@"Greater" setName:name];
        [greater setDynamicAttr:150 str:80 dex:50 agi:65];
        return greater;
    }
    
    return nil;
}

-(Boss_Monster*)makeBossMonster:(int)type name:(NSString*)name
{
    if (type == 0)
    {
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:100 str:65 dex:30 agi:45];
        return boss;
    }
    else if (type == 1)
    {
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:200 str:120 dex:70 agi:90];
        return boss;
    }
    else if (type == 2)
    {
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:400 str:250 dex:125 agi:150];
        return boss;
    }
    else if (type ==3)
    {
        Boss_Monster *boss = [[Boss_Monster alloc] init];
        [boss setPersistentAttr:@"Boss" setName:name];
        [boss setDynamicAttr:800 str:500 dex:300 agi:250];
        return boss;
    }
    
    return nil;}
@end
