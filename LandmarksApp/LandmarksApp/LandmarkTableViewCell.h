//
//  LandmarkTableViewCell.h
//  LandmarksApp
//
//  Created by David P. Lopez on 11/7/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LandmarkTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *LMImageView;
@property (weak, nonatomic) IBOutlet UILabel *LMCellName;
@property (weak, nonatomic) IBOutlet UILabel *LMCellLocation;

@end
