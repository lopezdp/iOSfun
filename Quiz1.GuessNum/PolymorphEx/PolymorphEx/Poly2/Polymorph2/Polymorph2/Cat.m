//
//  Cat.m
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "Cat.h"

@implementation Cat

-(void) speak
{
    NSLog(@"Meow!!!");
}

-(id) initWithColor:(NSString *)catColor andName: (NSString *) n;
{
    if(self == [super initWithName: n])
       {
           [self setCatColor: catColor];
       }
    return self;
}

@end
