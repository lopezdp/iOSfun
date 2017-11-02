//
//  StateTableViewCell.h
//  USStatesAndFlags
//
//  Created by David P. Lopez on 11/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *flagImage;
@property (weak, nonatomic) IBOutlet UILabel *stateName;
@property (weak, nonatomic) IBOutlet UILabel *stateMotto;

@end

