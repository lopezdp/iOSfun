//
//  Landmarks.h
//  LandmarksApp
//
//  Created by David P. Lopez on 11/7/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Landmarks : NSObject
@property (nonatomic, strong) NSString *LMDetailName;
@property (nonatomic, strong) NSString *LMDetailYearBuilt;
@property (nonatomic, strong) NSString *LMDetailAddress;
@property (nonatomic, strong) NSString *LMDetailDescription;
@property (nonatomic, strong) UIImage *LMImage;

@end
