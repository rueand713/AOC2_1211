//
//  ViewController.h
//  practicewk4
//
//  Created by Rueben Anderson on 11/13/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIView *topView;
    IBOutlet UIView *bottomView;
    IBOutlet UIButton *button;
    
    CGRect originalFrame;
    BOOL isTopView;
}

- (IBAction)onClick:(id)sender;
@end
