//
//  main.m
//  SC2.NSArrays
//
//  Created by David P. Lopez on 8/29/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *myFriends = [NSArray arrayWithObjects:@"Jake", @"Jill", @"Johana", nil];
        NSLog(@"I have %lu friends", [myFriends count]);
        
        //print char by char
        for (int i = 0; i < [myFriends count]; i++)
        {
            NSLog(@"Friend No: %i: %@", i+1, [myFriends objectAtIndex:i]);
        }
        
        
        
        
        
        int classCount;
        char cstring[40];
        NSString *firstName;
        
        NSLog(@"How many classes do you have today?");
        scanf("%u", &classCount);
        
        NSMutableArray *myClasses = [NSMutableArray array];
        
        for(int i = 0; i < classCount; i++)
        {
            NSLog(@"What is the course name?");
            scanf("%s", cstring);
            firstName = [NSString stringWithCString:cstring encoding:1];
            
            
            
            
            
            
        }
        
        
                                      
    }
    return 0;
}
