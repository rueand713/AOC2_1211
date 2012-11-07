//
//  ViewController2.h
//  2ndTestProject
//
//  Created by Rueben Anderson on 11/6/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController
{
    IBOutlet UIImageView *imageView;
    IBOutlet UIScrollView *scrollView;
    UIImage *myImage;
}

-(IBAction)onClick:(id)sender;
@end
