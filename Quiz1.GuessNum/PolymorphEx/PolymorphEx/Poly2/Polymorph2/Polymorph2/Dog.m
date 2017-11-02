//
//  Dog.m
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(void) speak
{
    NSLog(@"Woof!!");
}

-(id) initWithBreed: (NSString *) dogBreed  andName: (NSString *) n;
{
    if(self == [super initWithName: n])
    {
        [self setDogBreed: dogBreed];
    }
    
    return self;
}

@end
