//
//  Fraction.m
//  Fraction
//
//  Created by David P. Lopez on 8/29/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "Fraction.h"



@implementation Fraction
{
    int numerator, denominator;
}

//provide method implementation
-(void) printFraction
{
    NSLog(@"%i/%i", numerator,denominator);
}

//setters
-(void) setNumerator:(int)n
{
    numerator =n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

//getters
-(int) getNumerator
{
    return numerator;
}

-(int) getDenominator
{
    return denominator;
}

-(double) calcDecVal
{
    return (double) numerator/denominator;
}



@end


