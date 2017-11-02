//
//  ViewController.m
//  TestApp2
//
//  Created by David P. Lopez on 9/14/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;


@end

@implementation ViewController
- (IBAction)btnPress:(UIButton *)sender {
    
    //this pointer called title of object type NSString points to an object that sends a message to update the state of the title when the UIButton object is pressed by pointing title to the normal control state of the button, in this case Left or Right.
    NSString *title = [sender titleForState:UIControlStateNormal];
    
    //this pointer called plainText of object type NSString points to a message that will format the string pointed to by the pointer title that will be used to update the statusLabel with the text pointed to by the pointer title, which depends on the state during the btnPress event, immediatly followed by the "button pressed" string.
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed", title];
    
    //_status label is the synthesized instance variable that is taken by the setter method as an argument to update the instance of the private class variable statusLabel that is being passed with plainText. Basically every time the button is pressed the statusLabel instance variable in the object is updated with the current state that *title points to
    _statusLabel.text = plainText;
    
    
    
}


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




@end
