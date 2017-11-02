//
//  ViewController.m
//  OrientationApp
//
//  Created by David P. Lopez on 9/26/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations
{
    return (UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft);
}

//INTERFACE ORIENTATION - which way do the views on the screen rotate
//DEVICE ORIENTATION - the orientation of the device, or the way that it is held

@end
