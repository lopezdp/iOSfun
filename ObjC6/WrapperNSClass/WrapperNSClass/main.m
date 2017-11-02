//
//  main.m
//  WrapperNSClass
//
//  Created by David P. Lopez on 8/31/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int myint = 1234;
        
        //VS
        
        NSNumber *myEasyInteger = @1234;
        NSLog(@"\n My easy integer is: %@", myEasyInteger);
        
        //primitive data type
        float degreesF = 85.15;
        
        //NSNumber is a wrapper
        NSNumber *myFloat = [NSNumber numberWithFloat:degreesF];
        
        NSLog(@"My float value is: %@", myFloat);
        
        float yourFloat = [myFloat floatValue];
        NSLog(@"Back to primitive data type: %f", yourFloat);
        
        NSNumber *myInteger = [NSNumber numberWithInteger:99];
        int yourInt = [myInteger intValue];
        NSLog(@"MyInteger %@ is same as YourInteger: %d", myInteger, yourInt);
        
        NSString *myString = [myInteger stringValue];
        NSLog(@"myString is: %@", myString);
        NSString *aString = @"ABC";
        NSLog(@"my concatenated string is: %@", [aString stringByAppendingString:myString]);

        int y = 150;
        NSNumber *myFirstNumber = [NSNumber numberWithInt:150];
        NSNumber *mySecondNumber = [NSNumber numberWithInt:y];
        
        if(myFirstNumber == mySecondNumber)
        {
            NSLog(@"Success!!");
        }
        else{
            NSLog(@"FAIL!!");
        }
        
        if([myFirstNumber isEqualToNumber:mySecondNumber])
        {
            NSLog(@"Success!!");
        }
        else{
            NSLog(@"FAIL!!");
        }
        
        //=======================================================================//
        
        NSNumber *a = [NSNumber numberWithInt:28];
        NSNumber *b = [NSNumber numberWithInt:28];
        
        //is a bigger than b
        //or is b bigger than a
        
        NSComparisonResult result = [a compare:b];
        
        if(result == NSOrderedAscending)
        {
            NSLog(@"%@ is less than %@", a,b);
        }
        else if(result == NSOrderedDescending)
        {
            NSLog(@"%@ is greater than %@", a,b);
        }
        else if(result == NSOrderedSame)
        {
            NSLog(@"%@ is equal to %@", a,b);
        }
        
        //=======================================================================//
        

        
        
        
        
        
        
        
        
    }
    return 0;
}
