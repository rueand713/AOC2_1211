//
//  Shape.m
//  testProject
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "Shape.h"

@implementation Shape

-(id)init
{
    self = [super init];
    if (self != nil)
    {

    }
    
    return self;
}

-(void)printNumSides
{
    NSMutableString *shapeType = [[NSMutableString alloc] initWithString:@""];
    switch (numSides) {
        case 0:
            [shapeType setString:@"Circle"];
            break;
            
        case 1:
            [shapeType setString:@"Line"];
            break;
            
        case 3:
            [shapeType setString:@"Triangle"];
            break;
        
        case 4:
            [shapeType setString:@"Square"];
            break;
            
        default:
            break;
    }
    
    NSLog(@"I am a %@ and I have %d sides.", shapeType, numSides);
}

-(void)setSides:(int)setSideNum
{
    numSides = setSideNum;
}
@end
