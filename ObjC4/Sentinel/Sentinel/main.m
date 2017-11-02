//
//  main.m
//  Sentinel
//
//  Created by David P. Lopez on 8/24/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    const int SENTINEL = -99;
    
    @autoreleasepool {
        
        int billAmt;
        int custCounter = 0; //counter
        int sum = 0; //accumulator
        
        NSLog(@"Enter bill amount or enter -99 to quit: ");
        
        for(; billAmt != SENTINEL; )
        {
            NSLog(@"Bill: ");
            scanf("%d", &billAmt);
            
            if(billAmt != SENTINEL)
            {
                sum += billAmt;
                //update counter
                custCounter++;
            }
        }
        
        //perform calculation
        NSLog(@"%d customers walked in, total daily revenue is %d", custCounter, sum);
    }
    return 0;
}
