//
//  main.m
//  Fraction
//
//  Created by David P. Lopez on 8/29/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc]init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        NSLog(@"My fraction is: ");
        [myFraction printFraction];
        
        NSLog(@"My fraction value is: %.2f",[myFraction calcDecVal]);

    }
    return 0;
}
