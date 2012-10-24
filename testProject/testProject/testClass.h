//
//  testClass.h
//  testProject
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface testClass : NSObject
{
    int hp;
    float rating;
    BOOL royalty;
}

-(void)accessorMethod:(int)accessKey;
@end
