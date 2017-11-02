//
//  SecondSceneViewController.m
//  PassingData
//
//  Created by David P. Lopez on 10/27/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "SecondSceneViewController.h"

@interface SecondSceneViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scene2Label;

@end

@implementation SecondSceneViewController

-(void)loadView
{
    [super loadView];
    //output to console
    NSLog(@"This is the loadView method");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //add info received from scene1
    self.scene2Label.text = self.labelText;
    NSLog(@"This is the viewDidLoad method");
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //output to console
    NSLog(@"This is the viewWillAppear method");
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    //output to console
    NSLog(@"This is the viewWillLayoutSubviews method");
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //output to console
    NSLog(@"This is the viewDidLayoutSubviews method");
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    //output to console
    NSLog(@"This is the viewDidAppear method");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
