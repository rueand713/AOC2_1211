//
//  Boss_Monster.h
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Base_Monster.h"

@interface Boss_Monster : Base_Monster
{
    BOOL willResurrectFallen;
}

-(float)doTheMath:(float)rnd;
@property BOOL willResurrectFallen;
@end
