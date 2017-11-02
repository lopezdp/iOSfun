//
//  States.h
//  USStatesAndFlags
//
//  Created by David P. Lopez on 11/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface States : NSObject
@property (nonatomic, strong) NSString *name; //state name
@property (nonatomic, strong) NSString *capital; //capital city
@property (nonatomic, strong) NSString *motto; //latin moton
@property (nonatomic, strong) UIImage *flag; //state flag image

@end
