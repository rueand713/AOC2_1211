//
//  Shape.h
//  testProject
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject
{
    @protected
    int numSides;
}

-(void)printNumSides;
-(void)setSides:(int)setSideNum;
@end
