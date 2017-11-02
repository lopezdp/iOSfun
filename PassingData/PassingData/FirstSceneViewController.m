//
//  ViewController.m
//  PassingData
//
//  Created by David P. Lopez on 10/27/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "FirstSceneViewController.h"

@interface FirstSceneViewController ()
@property (weak, nonatomic) IBOutlet UIButton *goToScene2Btn;
@property (weak, nonatomic) IBOutlet UILabel *Scene1Label;

@end

@implementation FirstSceneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // great place for init code
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondSceneViewController *destination = [segue destinationViewController];
    destination.labelText = @"This data is from Scene1";
}

-(IBAction)returned:(UIStoryboardSegue *)segue
{
    self.Scene1Label.text = @"Returned from scene2";
}

@end
