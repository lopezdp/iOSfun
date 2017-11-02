//
//  ViewController.m
//  BMICalculator
//
//  Created by David P. Lopez on 9/25/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *feetField;
@property (weak, nonatomic) IBOutlet UILabel *ftFldLbl;
@property (weak, nonatomic) IBOutlet UITextField *inchesField;
@property (weak, nonatomic) IBOutlet UILabel *inFldLbl;
@property (weak, nonatomic) IBOutlet UILabel *cmFldLbl;
@property (weak, nonatomic) IBOutlet UITextField *centimetersField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UILabel *lbsSlideLbl;
@property (weak, nonatomic) IBOutlet UILabel *kgSlideLbl;
@property (weak, nonatomic) IBOutlet UIButton *computeBMIbtn;
@property (weak, nonatomic) IBOutlet UILabel *customBMI;
@property (weak, nonatomic) IBOutlet UITextField *bmiMsg;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sliderLabel.text = @"100";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)inputFieldDoneEditing:(id)sender
{
    //works better for text input. redundant for numeric input when all input numeric
    [sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender
{
    [self.feetField resignFirstResponder];
    [self.inchesField resignFirstResponder];
    [self.centimetersField resignFirstResponder];
}
- (IBAction)sliderChanged:(UISlider *)sender {
    int weight = (int) lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", weight];
}
- (IBAction)toggleControl:(UISegmentedControl *)sender {
    //0 = standard units
    if(sender.selectedSegmentIndex == 0)
    {
        self.feetField.hidden = NO;
        self.ftFldLbl.hidden = NO;
        self.inchesField.hidden = NO;
        self.inFldLbl.hidden = NO;
        self.lbsSlideLbl.hidden = NO;
        self.centimetersField.hidden = YES;
        self.cmFldLbl.hidden = YES;
        self.kgSlideLbl.hidden = YES;
        self.customBMI.text = NULL;
    }else{
        self.feetField.hidden = YES;
        self.ftFldLbl.hidden = YES;
        self.inchesField.hidden = YES;
        self.inFldLbl.hidden = YES;
        self.lbsSlideLbl.hidden = YES;
        self.centimetersField.hidden = NO;
        self.cmFldLbl.hidden = NO;
        self.kgSlideLbl.hidden = NO;
        self.customBMI.text = NULL;
    }
}
- (IBAction)calcBMIBtnPressed:(UIButton *)sender {
    double bmi = 0;
    double weight = [self.sliderLabel.text doubleValue];
    double feet = [self.feetField.text doubleValue];
    double inches = [self.inchesField.text doubleValue];
    double cent = [self.centimetersField.text doubleValue];
    
    NSString *msg1 = @"You are Under Weight!";
    NSString *msg2 = @"You are at a Normal Weight!";
    NSString *msg3 = @"You are Over Weight!";
    NSString *msg4 = @"You are Obese! Please Live Healthier!";
    
    if(self.feetField.hidden == NO)
    {
        //SI BMI formula
        //bmi = (Lbs/(height in inches squared)) * 703
        bmi = (weight/(((feet*12)+inches) * ((feet*12)+inches))) * 703;
    }else{
        //Metric BMI formula
        //bmi = (Kg/(height in meters squared))
        bmi = weight/((cent/100) * (cent/100));
    }
    
    if(bmi < 18.5)
    {
        self.bmiMsg.text = msg1;
    }
    else if (bmi >= 18.5 && bmi <= 24.9)
    {
        self.bmiMsg.text = msg2;
    }
    else if (bmi >= 25 && bmi <= 29.9)
    {
        self.bmiMsg.text = msg3;
    }
    else
    {
        self.bmiMsg.text = msg4;
    }
    
    NSString *calcMsg = [NSString stringWithFormat:@"%4.2f", bmi];
    self.customBMI.text = calcMsg;
}


@end
