//
//  main.m
//  RandomNumGame
//
//  Created by David P. Lopez on 8/31/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        const int HIGH = 100;
        const int LOW = 50;
        
        int mySecretNumber;
        for(int i = 0; i < 10; i++)
        {
            //guess a number
            mySecretNumber = arc4random() % (HIGH - LOW) + LOW;
            
            NSLog(@"My secret number is: %d", mySecretNumber);
        }
    }
    return 0;
}
