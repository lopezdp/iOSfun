//
//  main.m
//  SC1.SomeNSObj
//
//  Created by David P. Lopez on 8/29/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *make = @"Porsche";
        NSString *model = @"911 Turbo";
        
        NSLog(@"I would like to test drive the %@ %@", make, model);
        
        NSLog(@"The length of %@ is %lu", make, [make length]);
        
        //print char by char
        for (int i = 0; i < [model length]; i++)
        {
            NSLog(@"%d %c", i, [model characterAtIndex:i]);
        }
        
        NSString *myCar = @"Ashton Martin DB9";
        NSString *yourCar = @"Ashton Martin Vanquish";
        
        if ([myCar isEqualToString:yourCar])
        {
            NSLog(@"We drive same car");
        }
        else
        {
            NSLog(@"We drive different cars");
        }
        
        if([myCar hasSuffix:@"DB9"])
        {
            NSLog(@"I drive a DB9");
        }
        
        
    }
    return 0;
}
