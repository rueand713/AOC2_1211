//
//  ViewController.m
//  2ndTestProject
//
//  Created by Rueben Anderson on 11/6/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onChange:(id)sender
{
    NSInteger row0Selection = [picker selectedRowInComponent:0];
    NSInteger row1Selection = [picker selectedRowInComponent:1];
    
    NSString *clickString = [[NSString alloc] initWithFormat:@"R:%d C:0, R:%d C:1", row0Selection, row1Selection];
    NSLog(@"%@", clickString);
}

-(IBAction)onClick:(id)sender
{
    ViewController2 *secondView = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle: nil];
    
    [self presentViewController:secondView animated:YES completion:nil];
}

// sets the number of rows in each picker
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

// sets the number of columns in each row
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    // create a string to hold the column and row numbers of each row/column in the picker
    NSString *comStr = [[NSString alloc] initWithFormat:@"R:%d C:%d", row, component];
    return comStr;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *comStr = [[NSString alloc] initWithFormat:@"row= %d | col=%d", row, component];
    NSLog(@"%@", comStr);
}

@end
