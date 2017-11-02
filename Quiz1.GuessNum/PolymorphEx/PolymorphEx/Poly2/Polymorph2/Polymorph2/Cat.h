//
//  Cat.h
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "Animal.h"

@interface Cat : Animal
{
    NSString *color;
}

@property (getter=getCatColor, setter=setCatColor:) NSString *c;

-(void) speak;
-(id) initWithColor: (NSString *) catColor andName: (NSString *) name;

@end
