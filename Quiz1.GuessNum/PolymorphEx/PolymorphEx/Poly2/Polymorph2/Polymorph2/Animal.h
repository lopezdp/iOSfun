//
//  Animal.h
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    NSString *name; //instance var of @class Animal
}

//accessor methods. Review syntax regarding *nm
//Can this be done:
//@property NSString *name ----> to then continue on with 2nd @property???
@property (getter=getAnimalName, setter=setAnimalName:) NSString *nm;

-(void)speak;

-(id) initWithName: (NSString *) n;


@end
