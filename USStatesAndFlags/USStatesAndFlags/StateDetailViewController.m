//
//  StateDetailViewController.m
//  USStatesAndFlags
//
//  Created by David P. Lopez on 11/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "StateDetailViewController.h"

@interface StateDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *detailFlagImage;
@property (weak, nonatomic) IBOutlet UILabel *detailStateName;
@property (weak, nonatomic) IBOutlet UILabel *detailStateCapital;
@property (weak, nonatomic) IBOutlet UILabel *detailStateMotto;
@property (weak, nonatomic) IBOutlet UILabel *statePopulation;
@property (weak, nonatomic) IBOutlet UILabel *stateArea;

@end

@implementation StateDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailFlagImage.image = self.myState.flag;
    self.detailStateName.text = self.myState.name;
    self.detailStateCapital.text = self.myState.capital;
    self.detailStateMotto.text = self.myState.motto;
    
    //add a title
    self.navigationItem.title = self.myState.name;
    
    //add additional informaion
    if([self.myState.name isEqualToString:@"Alabama"])
    {
        self.statePopulation.text = @"Population: 4,858,979";
        self.stateArea.text = @"Area: 52,419 sq mi";
    }else if([self.myState.name isEqualToString:@"Georgia"])
    {
        self.statePopulation.text = @"Population: 10,214,860";
        self.stateArea.text = @"Area: 59,425 sq mi";
    }else if([self.myState.name isEqualToString:@"Florida"])
    {
        self.statePopulation.text = @"Population: 20,271,272";
        self.stateArea.text = @"Area: 65,755 sq mi";
    }else if([self.myState.name isEqualToString:@"New York"])
    {
        self.statePopulation.text = @"Population: 19,795,791";
        self.stateArea.text = @"Area: 54,555 sq mi";
    }else if([self.myState.name isEqualToString:@"California"])
    {
        self.statePopulation.text = @"Population: 39,144,818";
        self.stateArea.text = @"Area: 163,696 sq mi";
    }
    
    
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
