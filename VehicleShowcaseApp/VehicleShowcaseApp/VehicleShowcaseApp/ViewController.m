//
//  ViewController.m
//  VehicleShowcaseApp
//
//  Created by David P. Lopez on 9/26/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *makeField;
@property (weak, nonatomic) IBOutlet UITextField *modelField;
@property (weak, nonatomic) IBOutlet UITextField *mpgField;
@property (weak, nonatomic) IBOutlet UIImageView *imageDisplay;
@property (weak, nonatomic) IBOutlet UIButton *modelS;
@property (weak, nonatomic) IBOutlet UIButton *Model3;
@property (weak, nonatomic) IBOutlet UIButton *phantomRolls;
@property (weak, nonatomic) IBOutlet UIButton *modelX;
@property (weak, nonatomic) IBOutlet UIButton *ram1500;
@property (weak, nonatomic) IBOutlet UIButton *rallyFighter;
@property (weak, nonatomic) IBOutlet UITextField *msrp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //image
    self.imageDisplay.image = [UIImage imageNamed:@"Cars.jpg"];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backgroundTap:(id)sender
{
    //exit firstResponder here
    //not needed
}
- (IBAction)segmentControl:(UISegmentedControl *)sender {
    //control segment here
    if(sender.selectedSegmentIndex == 0)
    {
        //we are in the cars segment
        self.modelS.hidden = NO;
        self.Model3.hidden = NO;
        self.phantomRolls.hidden = NO;
        //hide truck buttons
        self.modelX.hidden = YES;
        self.ram1500.hidden = YES;
        self.rallyFighter.hidden = YES;
    }else
    {
        //we are in the trucks segment, hide car buttons
        self.modelS.hidden = YES;
        self.Model3.hidden = YES;
        self.phantomRolls.hidden = YES;
        //show truck buttons
        self.modelX.hidden = NO;
        self.ram1500.hidden = NO;
        self.rallyFighter.hidden = NO;
    }
}
- (IBAction)vehicleBtnPressed:(UIButton *)sender {
    
    NSString *title = [sender titleForState:UIControlStateNormal];
    self.msrp.hidden = NO;
    
    if([title  isEqual: @"Tesla Model S"])
    {
        self.makeField.text = @"Tesla";
        self.modelField.text = @"Model S";
        self.mpgField.text = @"103 MPGe";
        //add image here
        self.imageDisplay.image = [UIImage imageNamed:@"ModelS.jpg"];
        //msrp
        self.msrp.text = @"MSRP: $120,000";
        
    } else if([title isEqual:@"Tesla Model 3"])
    {
        self.makeField.text = @"Tesla";
        self.modelField.text = @"Model 3";
        self.mpgField.text = @"98 MPGe";
        //image
        self.imageDisplay.image = [UIImage imageNamed:@"Model3.jpg"];
        //msrp
        self.msrp.text = @"MSRP: $35,000";
    } else if([title isEqual:@"Rolls Royce Phantom"])
    {
        self.makeField.text = @"Rolls Royce";
        self.modelField.text = @"Phantom";
        self.mpgField.text = @"15 MPG";
        //image
        self.imageDisplay.image = [UIImage imageNamed:@"RollsPhantom.png"];
        //msrp
        self.msrp.text = @"MSRP: $495,000";
    } else if([title isEqual:@"Tesla Model X"])
    {
        self.makeField.text = @"Tesla";
        self.modelField.text = @"Model X";
        self.mpgField.text = @"102 MPGe";
        //image
        self.imageDisplay.image = [UIImage imageNamed:@"ModelX.suv.jpg"];
        //msrp
        self.msrp.text = @"MSRP: $140,000";
    }else if([title isEqual:@"Dodge Ram 1500"])
    {
        self.makeField.text = @"Dodge";
        self.modelField.text = @"Ram 1500";
        self.mpgField.text = @"14 MPG";
        //image
        self.imageDisplay.image = [UIImage imageNamed:@"Ram1500.jpg"];
        //msrp
        self.msrp.text = @"MSRP: $40,000";
    }else if([title isEqual:@"Rally Fighter"])
    {
        self.makeField.text = @"Local Motors";
        self.modelField.text = @"Rally Fighter";
        self.mpgField.text = @"24 MPG";
        //image
        self.imageDisplay.image = [UIImage imageNamed:@"RallyFighter.jpg"];
        //msrp
        self.msrp.text = @"MSRP: $85,000";
    }
}
@end
