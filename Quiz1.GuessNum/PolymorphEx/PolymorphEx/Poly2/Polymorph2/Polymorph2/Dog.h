//
//  Dog.h
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "Animal.h"

@interface Dog : Animal
{
    NSString *breed;
}

@property (getter=getDogBreed, setter=setDogBreed: ) NSString *br;

-(void) speak;
-(id) initWithBreed: (NSString *) dogBreed andName: (NSString *) name;

@end
