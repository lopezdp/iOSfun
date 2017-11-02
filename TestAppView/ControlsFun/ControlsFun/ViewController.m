//
//  ViewController.m
//  ControlsFun
//
//  Created by David P. Lopez on 9/25/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingBtn;
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;

@end






@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sliderLabel.text =@"50";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender
{
    [self.nameField resignFirstResponder];
    [self.numField resignFirstResponder];
}
- (IBAction)sliderChange:(UISlider *)sender {
    int progress = (int) lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}
- (IBAction)toggleControl:(UISegmentedControl *)sender
{
    self.msgLabel.hidden = YES;
    // 0 = switches
    if(sender.selectedSegmentIndex == 0)
    {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingBtn.hidden = YES;
        //self.msgLabel.hidden = YES;
    } else {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingBtn.hidden = NO;
        //self.msgLabel.hidden = NO;
    }
}
- (IBAction)switchChanged:(UISwitch *)sender
{
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated: YES];
    [self.rightSwitch setOn:setting animated: YES];
}
- (IBAction)doSomethingBtnPressed:(UIButton *)sender {
    NSString *msg = @"Do something button is pressed";
    self.msgLabel.text = msg;
    self.msgLabel.hidden = NO;
}


@end
