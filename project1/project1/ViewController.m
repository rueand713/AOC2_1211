//
//  ViewController.m
//  project1
//
//  Created by Rueben Anderson on 10/24/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"
#import "Monster_Factory.h"

// typedef for UIColor codes
typedef enum {
    WHITE = 0,
    RED,
    ORANGE,
    BLUE,
    GREEN,
    YELLOW,
    LGRAY,
    GRAY,
    DGRAY,
    CYAN,
    BLACK,
    TRANS
} colors;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
        // set the background of the main view
        self.view.backgroundColor = [UIColor whiteColor];
    
        // start popping out monsters! (using the static Monster Factory)
        Lesser_Monster *demonic_rabbit = [Monster_Factory makeLesserMonster:LESSER name:@"Demonic Rabbit"];
        Base_Monster *bandit = [Monster_Factory makeBasicMonster:BASE name:@"Bandit"];
        Greater_Monster *chaos_wizard = [Monster_Factory makeGreaterMonster:GREATER name:@"Chaos Wizard"];
        Boss_Monster *dark_underlord = [Monster_Factory makeBossMonster:BOSS name:@"Dark Underlord"];
    
        // Check if object is created properly if so log data and create UILabels
        if (demonic_rabbit != nil)
        {
            // perform calculation to determine 'ToHit' stat
            int derabHit = [demonic_rabbit calcToHit];
            
            // create the strings to pass in to the label creation
            NSString *name = [[NSString alloc] initWithFormat:@" %@", [demonic_rabbit getAttributes:NAME]];
            NSString *type = [[NSString alloc] initWithFormat:@" Type: %@", [demonic_rabbit getAttributes:TYPE]];
            NSString *spname = [[NSString alloc] initWithFormat:@" Ability: %@.  Active: %@", [demonic_rabbit getAttributes:SPNAME], demonic_rabbit.cpuCanResurrect ? @"YES" : @"NO"];
            NSString *end = [[NSString alloc] initWithFormat:@"END: %d", demonic_rabbit.endurance];
            NSString *str = [[NSString alloc] initWithFormat:@"STR: %d", demonic_rabbit.strength];
            NSString *agi = [[NSString alloc] initWithFormat:@"AGI: %d", demonic_rabbit.agility];
            NSString *dex = [[NSString alloc] initWithFormat:@"DEX: %d", demonic_rabbit.dexterity];
            NSString *hit = [[NSString alloc] initWithFormat:@"ToHit: %d", derabHit];
            
            
            // UILabel Creation
            [self createUI:0 y:0 w:320 h:115 text:@"" color:TRANS bg:GRAY];
            [self createUI:0 y:5 w:170 h:20 text:name color:WHITE bg:TRANS];
            [self createUI:175 y:5 w:150 h:20 text:type color:WHITE bg:TRANS];
            [self createUI:6 y:30 w:90 h:20 text:end color:WHITE bg:TRANS];
            [self createUI:101 y:30 w:90 h:20 text:str color:WHITE bg:TRANS];
            [self createUI:196 y:30 w:90 h:20 text:dex color:WHITE bg:TRANS];
            [self createUI:6 y:55 w:90 h:20 text:agi color:WHITE bg:TRANS];
            [self createUI:101 y:55 w:90 h:20 text:hit color:WHITE bg:TRANS];
            [self createUI:0 y:80 w:320 h:20 text:spname color:WHITE bg:TRANS];
            
        }
    
        // Check if object is created properly if so log data and create UILabels
        if (chaos_wizard != nil)
        {
            // perform calculation to determine 'ToHit' stat
            int chaosWizHit = [chaos_wizard calcToHit];
            
            // create the strings to pass in to the label creation
            NSString *name = [[NSString alloc] initWithFormat:@" %@", [chaos_wizard getAttributes:NAME]];
            NSString *type = [[NSString alloc] initWithFormat:@" Type: %@", [chaos_wizard getAttributes:TYPE]];
            NSString *spname = [[NSString alloc] initWithFormat:@" Ability: %@.  Active: %@", [chaos_wizard getAttributes:SPNAME], chaos_wizard.cpuWillUseItems ? @"YES" : @"NO"];
            NSString *end = [[NSString alloc] initWithFormat:@"END: %d", chaos_wizard.endurance];
            NSString *str = [[NSString alloc] initWithFormat:@"STR: %d", chaos_wizard.strength];
            NSString *agi = [[NSString alloc] initWithFormat:@"AGI: %d", chaos_wizard.agility];
            NSString *dex = [[NSString alloc] initWithFormat:@"DEX: %d", chaos_wizard.dexterity];
            NSString *hit = [[NSString alloc] initWithFormat:@"ToHit: %d", chaosWizHit];
            
            
            // UILabel Creation
            [self createUI:0 y:120 w:320 h:115 text:@"" color:TRANS bg:WHITE];
            [self createUI:0 y:125 w:170 h:20 text:name color:GRAY bg:TRANS];
            [self createUI:175 y:125 w:150 h:20 text:type color:GRAY bg:TRANS];
            [self createUI:6 y:150 w:90 h:20 text:end color:GRAY bg:TRANS];
            [self createUI:101 y:150 w:90 h:20 text:str color:GRAY bg:TRANS];
            [self createUI:196 y:150 w:90 h:20 text:dex color:GRAY bg:TRANS];
            [self createUI:6 y:175 w:90 h:20 text:agi color:GRAY bg:TRANS];
            [self createUI:101 y:175 w:90 h:20 text:hit color:GRAY bg:TRANS];
            [self createUI:0 y:200 w:320 h:20 text:spname color:GRAY bg:TRANS];
        }
    
        
        // Check if object is created properly if so log data and create UILabels
        if (dark_underlord != nil)
        {
            // perform calculation to determine 'ToHit' stat
            int darkUnderHit = [dark_underlord calcToHit];
            
            // create the strings to pass in to the label creation
            NSString *name = [[NSString alloc] initWithFormat:@" %@", [dark_underlord getAttributes:NAME]];
            NSString *type = [[NSString alloc] initWithFormat:@" Type: %@", [dark_underlord getAttributes:TYPE]];
            NSString *spname = [[NSString alloc] initWithFormat:@" Ability: %@.  Active: %@", [dark_underlord getAttributes:SPNAME], dark_underlord.willResurrectFallen ? @"YES" : @"NO"];
            NSString *end = [[NSString alloc] initWithFormat:@"END: %d", dark_underlord.endurance];
            NSString *str = [[NSString alloc] initWithFormat:@"STR: %d", dark_underlord.strength];
            NSString *agi = [[NSString alloc] initWithFormat:@"AGI: %d", dark_underlord.agility];
            NSString *dex = [[NSString alloc] initWithFormat:@"DEX: %d", dark_underlord.dexterity];
            NSString *hit = [[NSString alloc] initWithFormat:@"ToHit: %d", darkUnderHit];
            
            
            // UILabel Creation
            [self createUI:0 y:240 w:320 h:115 text:@"" color:TRANS bg:GRAY];
            [self createUI:0 y:245 w:170 h:20 text:name color:WHITE bg:TRANS];
            [self createUI:175 y:245 w:150 h:20 text:type color:WHITE bg:TRANS];
            [self createUI:6 y:265 w:90 h:20 text:end color:WHITE bg:TRANS];
            [self createUI:101 y:265 w:90 h:20 text:str color:WHITE bg:TRANS];
            [self createUI:196 y:265 w:90 h:20 text:dex color:WHITE bg:TRANS];
            [self createUI:6 y:290 w:90 h:20 text:agi color:WHITE bg:TRANS];
            [self createUI:101 y:290 w:90 h:20 text:hit color:WHITE bg:TRANS];
            [self createUI:0 y:315 w:320 h:20 text:spname color:WHITE bg:TRANS];

        }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    // function to dynamically create the interface
-(void)createUI:(int)x y:(int)y w:(int)w h:(int)h text:(NSString*)text color:(int)color bg:(int)bg
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(x, y, w, h)];
    if (label != nil)
    {
        // set the text to the passed in string
        label.text = text;
        
        // set the text color based on the passed in value of the color argument
        switch (color) {
            case WHITE:
                label.textColor = [UIColor whiteColor];
                break;
            
            case RED:
                label.textColor = [UIColor redColor];
                break;
                
            case ORANGE:
                label.textColor = [UIColor orangeColor];
                break;
                
            case BLUE:
                label.textColor = [UIColor blueColor];
                break;
                
            case GREEN:
                label.textColor = [UIColor greenColor];
                break;
                
            case YELLOW:
                label.textColor = [UIColor yellowColor];
                break;
                
            case LGRAY:
                label.backgroundColor = [UIColor lightGrayColor];
                break;
                
            case GRAY:
                label.textColor = [UIColor grayColor];
                break;
                
            case DGRAY:
                label.textColor = [UIColor darkGrayColor];
                break;
                
            case CYAN:
                label.textColor = [UIColor cyanColor];
                break;
                
            case BLACK:
                label.textColor = [UIColor blackColor];
                break;
                
            case TRANS:
            default:
                label.textColor = [UIColor clearColor];
                break;
        }
        
        // set the background color based on the passed in value of the bg argument
        switch (bg) {
            case WHITE:
                label.backgroundColor = [UIColor whiteColor];
                break;
                
            case RED:
                label.backgroundColor = [UIColor redColor];
                break;
                
            case ORANGE:
                label.backgroundColor = [UIColor orangeColor];
                break;
                
            case BLUE:
                label.backgroundColor = [UIColor blueColor];
                break;
                
            case GREEN:
                label.backgroundColor = [UIColor greenColor];
                break;
                
            case YELLOW:
                label.backgroundColor = [UIColor yellowColor];
                break;
                
            case LGRAY:
                label.backgroundColor = [UIColor lightGrayColor];
                break;
                
            case GRAY:
                label.backgroundColor = [UIColor grayColor];
                break;
                
            case DGRAY:
                label.backgroundColor = [UIColor darkGrayColor];
                break;
                
            case CYAN:
                label.backgroundColor = [UIColor cyanColor];
                break;
                
            case BLACK:
                label.backgroundColor = [UIColor blackColor];
                break;
            
            case TRANS:
            default:
                label.backgroundColor = [UIColor clearColor];
                break;
        }
        
        // display the label on the UIView
        [self.view addSubview:label];
    }
}

@end
