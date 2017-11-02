//
//  main.m
//  Polymorph2
//
//  Created by David P. Lopez on 9/12/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *myAnimals = [NSMutableArray new];
        
        Animal *germanShepherd = [[Dog alloc]initWithBreed: @"German Shepherd" andName: @"Zeus"];
        Animal *maineCoon = [[Cat alloc]initWithColor: @"Black" andName: @"Panda"];
        Animal *tabbyCat = [[Cat alloc]initWithColor: @"Tabby" andName: @"Zaichik"];
        Animal *shortHair = [[Cat alloc]initWithColor: @"Orange" andName: @"Blackie"];
        
        [myAnimals addObject:germanShepherd];
        [myAnimals addObject:maineCoon];
        [myAnimals addObject:tabbyCat];
        [myAnimals addObject:shortHair];
        
        //polymorphism
        for(Animal *anAnimal in myAnimals)
        {
            NSLog(@"I am %@ and I speak: ",[anAnimal getAnimalName]);
            [anAnimal speak];
        }
        
        //
        
        
        
        
        
    }
    return 0;
}
