//
//  DateViewController.m
//  TabViewsAndPickers
//
//  Created by David P. Lopez on 10/3/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *now = [NSDate date];
    [self.datePicker setDate:now animated:NO];
    
    
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
- (IBAction)buttonPressed:(UIButton *)sender {
    
    
    NSDate *date = self.datePicker.date;
    
    
    //CHALLENGE use NSDate format class
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    
    [dateFormatter setDateFormat:@"MM/dd/yyyy HH:MM:SSa"];
    
    NSString *msg = [[NSString alloc]initWithFormat:@"The date & time selected is: %@", [dateFormatter stringFromDate:date]];
    
    //Prep UIAlert
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Date & Time Selected" message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"This is so cool" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
                                
}

@end
