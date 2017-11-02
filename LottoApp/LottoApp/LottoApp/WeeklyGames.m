//
//  WeeklyGames.m
//  LottoApp
//
//  Created by David P. Lopez on 10/11/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "WeeklyGames.h"
#define kDrawingComponent 0
#define kPickComponent 1

#define kWhiteComponent 0
#define kOrangeComponent 1

#define kLuckyMoneyCount 5
#define kMaxWhiteBall 47
#define kMaxOrangeBall 17
#define kTixPicker 0
#define kCustomPicker 1
#define kGamePicker 2

@interface WeeklyGames ()
@property (weak, nonatomic) IBOutlet UIPickerView *tixPicker;
@property (strong, nonatomic) NSArray *drawingType;
@property (strong, nonatomic) NSArray *pickType;

//quick pick array
@property (strong, nonatomic) NSMutableArray *quickPicks;

//custom pick array
@property (strong,nonatomic) NSMutableArray *whitePicks;
@property (strong,nonatomic) NSMutableArray *orangePicks;

//outlets for Quick & Custom Picks text fields & pickers
@property (weak, nonatomic) IBOutlet UIPickerView *customPickField;





@end

@implementation WeeklyGames
- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //populate the drawingType array with mid/eve drawing "hard code"
    self.drawingType = @[@"Mid-Day", @"Evening", @"Both"];
    
    //populate the pickType array with quick pick or custom pick "hard code"
    self.pickType = @[@"Quick", @"Custom"];
    
    
    //populate the white and orange "ball" arrays
    self.whitePicks = [[NSMutableArray alloc]initWithCapacity:kMaxWhiteBall];
    self.orangePicks = [[NSMutableArray alloc]initWithCapacity:kMaxOrangeBall];
    
   // int count = 1;
    for(int i = 0; i < kMaxWhiteBall; i++)
    {
        [self.whitePicks addObject:[NSNumber numberWithInt:(i+1)]];
        //count = count + 1;
    }
    
    //count = 1;
    for(int i = 0; i < kMaxOrangeBall; i++)
    {
        [self.orangePicks addObject:[NSNumber numberWithInt:(i+1)]];
        //count = count + 1;
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tixBtnPress:(UIButton *)sender {
    //this button selects mid or eve drawings
    //obtain the selection from each wheel
    NSInteger drawingRow = [self.tixPicker selectedRowInComponent:kDrawingComponent];
    NSInteger pickRow = [self.tixPicker selectedRowInComponent:kPickComponent];
    
    //obtain drawing and pick strings by fetching the data from the tixPicker wheel
    NSString *draw = self.drawingType[drawingRow];
    NSString *pick = self.pickType[pickRow];
    
    //decide to purchase tickets for one drawing or both drawings
    if([self.drawingType[drawingRow]  isEqual: @"Mid-Day"])
    {
        //decide to display quick pick or custom pick numbers
        //if quickPicks then generate random numbers
        //else display picker and select custom pick numbers
        
        if([self.pickType[pickRow] isEqual:@"Quick"])
        {
            //this is mid-day quickPicks
            //initialize quickPicks array with total number of balls
            self.quickPicks = [[NSMutableArray alloc]initWithCapacity:kLuckyMoneyCount];
            
            //hide customPickField
            self.customPickField.hidden = YES;
            
            //random generate quick pick numbers and populate an array with each num
            //for luckey money: 4 slots @ 1-47 & 1 slot @ 1-17
            //need : arc4random_uniform(47) and populate the quickPicks array
            for(int i = 0; i < kLuckyMoneyCount; i++)
            {
                if(i < (kLuckyMoneyCount - 1))
                {
                    [self.quickPicks addObject:[NSNumber numberWithInt:(arc4random_uniform(47) + 1)]];
                }else if(i < kLuckyMoneyCount)
                {
                    [self.quickPicks addObject:[NSNumber numberWithInt:(arc4random_uniform(17) + 1)]];
                }
            }
            
            //create a mutable string from the contents of the quickPicks array
            NSMutableString *quickPickText = [NSMutableString new];
            for (NSString* line in self.quickPicks)
            {
                [quickPickText appendFormat: @"%@ ", line];
            }
            
            //create a message to display selections for mid-day quickPicks
            NSString *msg = [[NSString alloc]initWithFormat:@"Your drawing: %@ Drawing. \n Your pick: %@ Pick. \n Your Quick Picks: %@", draw, pick, quickPickText];
            
            //create alert
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Thank you for your order." message:msg preferredStyle:UIAlertControllerStyleAlert];
            
            //create an action
            UIAlertAction *action = [UIAlertAction actionWithTitle:@"Please Pay Cashier $1" style:UIAlertActionStyleDefault handler:nil];
            
            [alert addAction:action];
            [self presentViewController:alert animated:YES completion:nil];
            
        }else if([self.pickType[pickRow] isEqual:@"Custom"])
        {
            //this is mid-day custom picks
            //display customPickField
            self.customPickField.hidden = NO;
        
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }else if([self.drawingType[drawingRow]  isEqual: @"Evening"])
    {
        //decide to display quick pick or custom pick numbers
        //if quick pick then generate random numbers
        //else display picker and select custom pick numbers
        if([self.pickType[pickRow] isEqual:@"Quick"])
        {
            //this is evening quickPicks
            //initialize quickPicks array with total number of balls
            self.quickPicks = [[NSMutableArray alloc]initWithCapacity:kLuckyMoneyCount];
            
            //hide customPickField
            self.customPickField.hidden = YES;
            
            //random generate quick pick numbers and populate an array with each num
            //for luckey money: 4 slots @ 1-47 & 1 slot @ 1-17
            //need : arc4random_uniform(47) and populate the quickPicks array
            for(int i = 0; i < kLuckyMoneyCount; i++)
            {
                if(i < (kLuckyMoneyCount - 1))
                {
                    [self.quickPicks addObject:[NSNumber numberWithInt:(arc4random_uniform(47) + 1)]];
                }else if(i < kLuckyMoneyCount)
                {
                    [self.quickPicks addObject:[NSNumber numberWithInt:(arc4random_uniform(17) + 1)]];
                }
            }
            
            //create a mutable string from the contents of the quickPicks array
            NSMutableString *quickPickText = [NSMutableString new];
            for (NSString* line in self.quickPicks)
            {
                [quickPickText appendFormat: @"%@ ", line];
            }
            
            //create a message to display selections for mid-day quickPicks
            NSString *msg = [[NSString alloc]initWithFormat:@"Your drawing: %@ Drawing. \n Your pick: %@ Pick. \n Your Quick Picks: %@", draw, pick, quickPickText];
            
            //create alert
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Thank you for your order." message:msg preferredStyle:UIAlertControllerStyleAlert];
            
            //create an action
            UIAlertAction *action = [UIAlertAction actionWithTitle:@"Please Pay Cashier $1" style:UIAlertActionStyleDefault handler:nil];
            
            [alert addAction:action];
            [self presentViewController:alert animated:YES completion:nil];
            
            

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }else if([self.pickType[pickRow] isEqual:@"Custom"])
        {
            //display customPickField
            self.customPickField.hidden = NO;
            
            
            
            
            
        }
        
    }else if([self.drawingType[drawingRow]  isEqual: @"Both"])
    {
        
    }
    
    
    
    
    
    
    
    
    /*
    //create a message to display selections
    NSString *msg = [[NSString alloc]initWithFormat:@"Your drawing: %@ Drawing. \n Your pick: %@ Pick.", draw, pick];
    
    //create alert
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Thank you for your order." message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    //create an action
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
     */
    
    
    
}











#pragma mark -
#pragma mark Picker Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
        return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if(pickerView == self.tixPicker)
    {
        if(component == kDrawingComponent)
        {
            return [self.drawingType count];
        }else{
            return [self.pickType count];
        }
    }
    else if(pickerView == self.customPickField)
    {
        if(component == kWhiteComponent)
        {
            //need to load some numbers into picker
            return [self.whitePicks count];
        }else{
            return [self.orangePicks count];
        }
    }
    //need game picker data source
    else{
        return 0;
    }
}


    

#pragma mark -
#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(pickerView == self.tixPicker)
    {
        if(component == kDrawingComponent)
        {
            return self.drawingType[row];
        }else{
            return self.pickType[row];
        }
    }else if(pickerView == self.customPickField)
    {
        if(component == kWhiteComponent)
        {
            return self.whitePicks[row];
        }else{
            return self.orangePicks[row];
        }
    }
    else{
        return 0;
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

@end
