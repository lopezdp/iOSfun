//
//  ViewController.m
//  ConversionUtilitiesApp
//
//  Created by David P. Lopez on 9/27/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *leftInput;
@property (weak, nonatomic) IBOutlet UITextField *rightInput;
@property (weak, nonatomic) IBOutlet UITextField *convertStatus;
@property (weak, nonatomic) IBOutlet UIImageView *imgDisp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //startup image
    self.imgDisp.image = [UIImage imageNamed:@"UnitConvert.png"];
    
    //update status label
    self.convertStatus.text = @"Lopez Unit Converter App";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backgroundTap:(id)sender
{
    //exit key pad when user taps on background
    [self.leftInput resignFirstResponder];
    [self.rightInput resignFirstResponder];
}
- (IBAction)navBar:(UISegmentedControl *)sender {
    //Initialize placeholders depending on which converter is being used.
    if(sender.selectedSegmentIndex == 0)
    {
        //add image here
        self.imgDisp.image = [UIImage imageNamed:@"temperature.png"];
        //update status label
        self.convertStatus.text = @"Temperature Converter";
        //inside of temp segment update placeholder
        self.leftInput.placeholder = @"Enter Temp in F";
        self.rightInput.placeholder = @"Enter Temp in C";
    }else if(sender.selectedSegmentIndex == 1)
    {
        //add image here
        self.imgDisp.image = [UIImage imageNamed:@"speed.jpg"];
        //update status label
        self.convertStatus.text = @"Speed Converter";
        //inside of speed segment update placeholder
        self.leftInput.placeholder = @"Enter Speed MPH";
        self.rightInput.placeholder = @"Speed in Km/H";
        
    }else if(sender.selectedSegmentIndex == 2)
    {
        //add image here
        self.imgDisp.image = [UIImage imageNamed:@"weight.jpg"];
        //update status label
        self.convertStatus.text = @"Mass Converter";
        //inside of weight segment update placeholder
        self.leftInput.placeholder = @"Weight in Lbs";
        self.rightInput.placeholder = @"Enter Weight in Kg";
    }
    else if(sender.selectedSegmentIndex == 3)
    {
        //add image here
        self.imgDisp.image = [UIImage imageNamed:@"fluid.jpg"];
        //update status label
        self.convertStatus.text = @"Volume Converter";
        //inside of fluid segment update placeholder
        self.leftInput.placeholder = @"Volume in Gal";
        self.rightInput.placeholder = @"Enter Volume in L";
    }
}
- (IBAction)convertBtnPressed:(UIButton *)sender {
    //get rid of key pad
    [self.leftInput resignFirstResponder];
    
    //perform conversions
    if([self.convertStatus.text isEqual: @"Temperature Converter"])
    {
        double c, f;
        //get F input value
        f = [self.leftInput.text doubleValue];
        
        //Fahren to Celsius
        //C = (F - 32) × 5/9
        c = (f - 32) * (5.0/9);
        
        //output converted temp
        NSString *convTemp = [NSString stringWithFormat:@"%2.4f C", c];
        
        self.rightInput.text = convTemp;
    }else if([self.convertStatus.text isEqual: @"Speed Converter"])
    {
        const double KMPH = 1.609344;
        double mph, kmph;
        //get mph input value
        mph = [self.leftInput.text doubleValue];
        
        //mph to KmPh
        //kmph = mph * 1.609344
        kmph = mph * KMPH;
        
        //output converted speed
        NSString *conv = [NSString stringWithFormat:@"%2.4f Km/H", kmph];
        self.rightInput.text = conv;
    }else if([self.convertStatus.text isEqual: @"Mass Converter"])
    {
        const double LBS2KG = 0.45359237;
        double lbs, kg;
        //get lbs input value
        lbs = [self.leftInput.text doubleValue];
        
        //lbs to kg
        //kg = lbs * 0.45359237
        kg = lbs * LBS2KG;
        
        //output converted mass
        NSString *conv = [NSString stringWithFormat:@"%2.4f Kg", kg];
        self.rightInput.text = conv;
    }else if([self.convertStatus.text isEqual: @"Volume Converter"])
    {
        const double GAL2L = 3.785411784;
        double gal, l;
        //get gal input value
        gal = [self.leftInput.text doubleValue];
        
        //gal to l
        //l = gal * 3.785411784
        l = gal * GAL2L;
        
        //output converted mass
        NSString *conv = [NSString stringWithFormat:@"%2.4f L", l];
        self.rightInput.text = conv;
    }
}
- (IBAction)reverseBtnPressed:(UIButton *)sender {
    //get rid of key pad
    [self.rightInput resignFirstResponder];
    
    //perform conversions
    if([self.convertStatus.text isEqual: @"Temperature Converter"])
    {
        double c, f;
        //get C input value
        c = self.rightInput.text.doubleValue;
        
        //Celsius to Fahren
        //F = C × 9/5 + 32
        f = c * (9.0/5) + 32;
        
        //output reverse converted temp
        NSString *revTemp = [NSString stringWithFormat:@"%2.4f F", f];
        
        self.leftInput.text = revTemp;
    }else if([self.convertStatus.text isEqual: @"Speed Converter"])
    {
        const double KMPH = 1.609344;
        double mph, kmph;
        //get kmph input value
        kmph = [self.rightInput.text doubleValue];
        
        //Kmph to mph
        //mph = kmph / 1.609344
        mph = kmph / KMPH;
        
        //output converted speed
        NSString *conv = [NSString stringWithFormat:@"%2.4f mph", mph];
        self.leftInput.text = conv;
    }else if([self.convertStatus.text isEqual: @"Mass Converter"])
    {
        const double LBS2KG = 0.45359237;
        double lbs, kg;
        //get kg input value
        kg = [self.rightInput.text doubleValue];
        
        //kg to lbs
        //lbs = kg / 0.45359237
        lbs = kg / LBS2KG;
        
        //output converted mass
        NSString *conv = [NSString stringWithFormat:@"%2.4f Lbs", lbs];
        self.leftInput.text = conv;
    }else if([self.convertStatus.text isEqual: @"Volume Converter"])
    {
        const double GAL2L = 3.785411784;
        double gal, l;
        //get l input value
        l = [self.rightInput.text doubleValue];
        
        //l to gal
        //gal = l / 3.785411784
        gal = l / GAL2L;
        
        //output converted mass
        NSString *conv = [NSString stringWithFormat:@"%2.4f Gal", gal];
        self.leftInput.text = conv;
    }
}

@end
