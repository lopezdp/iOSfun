//
//  DoubleComponentPickerViewViewController.m
//  TabViewsAndPickers
//
//  Created by David P. Lopez on 10/3/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "DoubleComponentPickerViewViewController.h"
#define kFillingComponent 0
#define kBreadComponent 1

@interface DoubleComponentPickerViewViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *dblPicker;
@property (strong, nonatomic) NSArray *fillingTypes;
@property (strong, nonatomic) NSArray *breadTypes;


@end

@implementation DoubleComponentPickerViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.fillingTypes = @[@"Turkey", @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Ham"];
    
    self.breadTypes = @[@"White", @"Whole Wheat", @"Italian"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnPressed:(UIButton *)sender {
    
    //obtain the selection for each wheel
    NSInteger fillingRow = [self.dblPicker selectedRowInComponent:kFillingComponent];
    
    NSInteger breadRow = [self.dblPicker selectedRowInComponent:kBreadComponent];
    
    //obtain the bread string and filling name
    NSString *filling = self.fillingTypes[fillingRow];
    NSString *bread = self.breadTypes[breadRow];
    
    //create a message
    NSString *message = [[NSString alloc]initWithFormat:@"Your %@ on %@ will be right up.", filling, bread] ;
    
    //create alert
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Thank you for your order" message: message preferredStyle: UIAlertControllerStyleAlert];
    
    //create an action
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Great" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -
#pragma mark Picker Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == kBreadComponent)
    {
        return [self.breadTypes count];
    }else{
        return [self.fillingTypes count];
    }
}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == kBreadComponent)
    {
        return self.breadTypes[row];
    }else{
        return self.fillingTypes[row];
    }
}

















@end
