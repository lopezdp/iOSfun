//
//  CustomPickerViewController.m
//  TabViewsAndPickers
//
//  Created by David P. Lopez on 10/3/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "CustomPickerViewController.h"

@interface CustomPickerViewController ()
@property (strong, nonatomic) NSArray *images;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *winLabel;


@end

@implementation CustomPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //loading the data array
    self.images = @[[UIImage imageNamed:@"bar"], [UIImage imageNamed:@"cherry"], [UIImage imageNamed:@"apple"], [UIImage imageNamed:@"seven"], [UIImage imageNamed:@"lemon"], [UIImage imageNamed:@"crown"]];
    
    //label needs to contain a space
    //bcs if not space its height will collapse
    //to zero
    self.winLabel.text = @" ";
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)spin:(UIButton *)sender {
    BOOL win = NO; //used to track whether we find 3 in a row
                   //when we do, we will set it to YES
    
    int numInRow = 1; //keep track of how many of the same
                     //items that we have in a row so far
    
    int lastVal = -1;
    
    for(int i = 0; i < 5; i++)
    {
        int newValue = arc4random_uniform((uint)[self.images count]);
        //compare newValue to the previous
        //if match found increment num in row
        if(newValue == lastVal)
        {
            numInRow++;
        }else{
            //reset numInRow to 1
            numInRow = 1;
        }
        
        lastVal = newValue;
        
        //set the corresponding component to the newValue
        [self.picker selectRow:newValue inComponent:i animated:YES];
        [self.picker reloadComponent:i];
        
        //do i have a winner
        if(numInRow >= 3)
        {
            win = YES;
        }
    }
    
    //set the label to say whether the spin produced a winner
    if(win){
        self.winLabel.text = @"WINNER!";
    }else{
        self.winLabel.text = @" ";
    }
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
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 5;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.images count];
}

#pragma mark Picker Dlegate Methods
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIImage *image = self.images[row];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    return imageView;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 64;
}













@end
