//
//  testClass.m
//  testProject
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "testClass.h"

@interface testClass ()
    -(void)setAttributes:(int)setHP setRating:(float)setRating setRoyalty:(BOOL)setRoyalty;
    -(void)printAttr;
    -(void)testPrint;
@end

@implementation testClass

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        hp = 100;
        rating = 4.5f;
        royalty = false;
    }
    
    return self;
}

-(void)accessorMethod:(int)accessKey
{
    switch (accessKey) {
        case 0:
            [self setAttributes:200 setRating:6.7f setRoyalty:true];
            break;
        
        case 1:
            [self printAttr];
            break;
            
        case 2:
            [self testPrint];
            break;
            
        default:
            NSLog(@"Access denied! Invalid accessor method key");
            break;
    }
}

-(void)setAttributes:(int)setHP setRating:(float)setRating setRoyalty:(BOOL)setRoyalty
{
    hp = setHP;
    rating = setRating;
    royalty = setRoyalty;
}

-(void)printAttr
{
    NSLog(@"HP: %d RTN: %.1f", hp, rating);
}

-(void)testPrint
{
    NSLog(@"This is an example of a private method!");
}
@end
