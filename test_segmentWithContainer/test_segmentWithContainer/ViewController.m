//
//  ViewController.m
//  test_segmentWithContainer
//
//  Created by Monica Lozano on 10/10/16.
//  Copyright © 2016 Pierre-Remi Comellas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize DailyView, WeeklyView;

- (void)viewDidLoad {
    self.DailyView.hidden=NO;
    self.WeeklyView.hidden=YES;

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SegmentedControlAction:(UISegmentedControl *)sender {


    switch (sender.selectedSegmentIndex) {
        case 0:
            self.WeeklyView.hidden=YES;
            self.DailyView.hidden=NO;
            break;
        case 1:
            self.DailyView.hidden=YES;
            self.WeeklyView.hidden=NO;
        
            break;
    }
}
@end
