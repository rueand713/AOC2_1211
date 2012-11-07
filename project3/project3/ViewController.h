//
//  ViewController.h
//  project3
//
//  Created by Rueben Anderson on 11/7/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <undergroundRailroad>
{
    // outlet for the textView interface object
    IBOutlet UITextView *textView;
}

// second view click handler
- (IBAction)onClick:(id)sender;
@end
