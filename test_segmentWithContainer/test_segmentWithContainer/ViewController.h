//
//  ViewController.h
//  test_segmentWithContainer
//
//  Created by Monica Lozano on 10/10/16.
//  Copyright © 2016 Pierre-Remi Comellas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *DailyView;
@property (weak, nonatomic) IBOutlet UIView *WeeklyView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentedControl;
- (IBAction)SegmentedControlAction:(id)sender;



@end

