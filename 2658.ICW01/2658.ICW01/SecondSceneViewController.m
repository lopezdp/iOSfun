//
//  SecondSceneViewController.m
//  2658.ICW01
//
//  Created by David P. Lopez on 10/28/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "SecondSceneViewController.h"

@interface SecondSceneViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;



@end

@implementation SecondSceneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //display name collected from scene1 held as strong var labelText
    self.greetingLabel.text = [NSString stringWithFormat:@"Hello, %@", self.labelText];
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
