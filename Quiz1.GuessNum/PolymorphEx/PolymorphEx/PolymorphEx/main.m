//
//  main.m
//  PolymorphEx
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Woman.h"
#import "Man.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         
         Create a pointer of type Human that points to an Object of type Human/Woman/Man
         
        */
        
        
        Human *human = [[Human alloc]init];
        Human *woman = [[Woman alloc]init];
        Human *man = [Man new];
        
        NSLog(@"Human Gender: %@", [human getGender]);
        NSLog(@"Woman Gender: %@", [woman getGender]);
        NSLog(@"Man Gender: %@", [man getGender]);
        
        
        
        
        
    }
    return 0;
}
