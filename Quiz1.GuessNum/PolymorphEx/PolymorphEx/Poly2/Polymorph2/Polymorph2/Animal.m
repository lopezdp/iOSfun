//
//  Animal.m
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(void) speak
{
    NSLog(@"Not implemented");
}

-(id) initWithName: (NSString *) n
{
    if(self == [super init])
    {
        [self setAnimalName: n];
    }
    
    return self;
}

@end
