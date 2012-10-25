//
//  Monster_Factory.h
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Base_Monster.h"
#import "Lesser_Monster.h"
#import "Greater_Monster.h"
#import "Boss_Monster.h"

@interface Monster_Factory : NSObject

// static methods used for the monster factory
+(Base_Monster*)makeBasicMonster:(int)type name:(NSString*)name;
+(Lesser_Monster*)makeLesserMonster:(int)type name:(NSString*)name;
+(Greater_Monster*)makeGreaterMonster:(int)type name:(NSString*)name;
+(Boss_Monster*)makeBossMonster:(int)type name:(NSString*)name;
@end
