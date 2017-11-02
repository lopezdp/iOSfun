//
//  Fraction.h
//  Fraction
//
//  Created by David P. Lopez on 8/29/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Fraction : NSObject
- (void) printFraction;


//setters
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;

//getters
- (int) getNumerator;
- (int) getDenominator;

-(double) calcDecVal;


@end


