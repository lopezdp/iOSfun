//
//  LandmarkDetailsViewController.m
//  LandmarksApp
//
//  Created by David P. Lopez on 11/7/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "LandmarkDetailsViewController.h"

@interface LandmarkDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *LMDetailImg;
@property (weak, nonatomic) IBOutlet UILabel *detailName;
@property (weak, nonatomic) IBOutlet UILabel *detailYear;
@property (weak, nonatomic) IBOutlet UILabel *detailAddress;
@property (weak, nonatomic) IBOutlet UITextView *detailDescr;
@property (weak, nonatomic) IBOutlet UILabel *reference;

@end

@implementation LandmarkDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.LMDetailImg.image = self.myLM.LMImage;
    self.detailName.text = self.myLM.LMDetailName;
    self.detailYear.text = self.myLM.LMDetailYearBuilt;
    self.detailAddress.text = self.myLM.LMDetailAddress;
    self.detailDescr.text = self.myLM.LMDetailDescription;
    self.reference.text = @"Source: Miami New Times. Travis Cohen, 20 August 2013";
    
    //customize font & lettering
    self.detailName.font = [UIFont boldSystemFontOfSize:17];
    self.detailYear.font = [UIFont italicSystemFontOfSize:14];
    self.detailAddress.font = [UIFont italicSystemFontOfSize:16];
    self.reference.font = [UIFont italicSystemFontOfSize:12];
    
    //add a title to details view
    self.navigationItem.title = self.myLM.LMDetailName;
    
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
