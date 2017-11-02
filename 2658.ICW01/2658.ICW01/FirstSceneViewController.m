//
//  ViewController.m
//  2658.ICW01
//
//  Created by David P. Lopez on 10/28/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "FirstSceneViewController.h"


@interface FirstSceneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UIButton *goToScene2Btn;
@property (weak, nonatomic) IBOutlet UITextField *displayField;
@property (weak, nonatomic) NSString *heightInches;
@end

@implementation FirstSceneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //bring data back from scene2
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondSceneViewController *destination = [segue destinationViewController];
    destination.labelText = self.nameField.text;
}

-(IBAction)goBackToScene1:(UIStoryboardSegue *)segue
{
    //Hello, Adnan, you are 6'3 which is 191cm
    //display label when unwind executed
    self.displayField.hidden = NO;
    
    //pass data back from second scene to first scene
    SecondSceneViewController *source = (SecondSceneViewController *)segue.sourceViewController;
    self.heightInches = source.heightField.text;
    
    //configure data to scope requirements
    //output data to label
    self.displayField.text = [NSString stringWithFormat:@"Hello, %@, you are %d'-%.0f\" which is %.0f cm", self.nameField.text, (self.heightInches.intValue/12),(((self.heightInches.intValue/12.0)-(self.heightInches.intValue/12)) * 12), (self.heightInches.intValue * 2.54)]; //EXAMPLE OUTPUT
    
}



@end
