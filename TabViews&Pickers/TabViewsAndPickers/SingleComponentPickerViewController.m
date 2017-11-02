//
//  SingleComponentPickerViewController.m
//  TabViewsAndPickers
//
//  Created by David P. Lopez on 10/3/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "SingleComponentPickerViewController.h"

@interface SingleComponentPickerViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *singlePicker;
@property (strong, nonatomic) NSArray *carNames;

@end

@implementation SingleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //populate array - "hard coding"
    self.carNames = @[@"Honda Civic", @"Ford Explorer", @"Toyota Prius", @"Porsche Carrera", @"Chevy Corvette", @"Nissan GTR"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
#pragma mark Picker Data Source Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.carNames count];
}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.carNames[row];
}


/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnPressed:(UIButton *)sender {
    //ask which row pressed
    NSInteger row = [self.singlePicker selectedRowInComponent:0];
    
    //fetch data
    NSString *selected = self.carNames[row];
    NSString *title = [[NSString alloc]initWithFormat:@"You have selected %@ car!", selected];
    
    //UI Alert
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:@"Its a great car" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"You are welcome!" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
    
}

@end
