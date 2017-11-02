//
//  SecondSceneViewController.h
//  2658.ICW01
//
//  Created by David P. Lopez on 10/28/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

//specifying delegate protocol

@interface SecondSceneViewController : UIViewController
@property (strong, nonatomic) NSString *labelText;
@property (weak, nonatomic) IBOutlet UITextField *heightField;

@end
