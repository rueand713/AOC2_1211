//
//  Triangle.m
//  testProject
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        numSides = 3;
    }
    
    return self;
}
@end
