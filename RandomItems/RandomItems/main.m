//
//  main.m
//  RandomItems
//
//  Created by David P. Lopez on 11/2/17.
//  Copyright © 2017 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // Fast enumeration cannot be used to add/remove objects from within the loop!
        for(NSString *item in items){
            // Log the item description
            NSLog(@"%@", item);
        }
        /**
         Alternate for if add/remove needed:
         
         for(int i = 0; i < [items count]; i++){
            NSString *item = [items objectAtIndex: i];
            NSLog(@"%@", item);
         }
         
         **/
        
        Item *item = [[Item alloc] init];
        
        // Create an NSString and give to item name
        [item setItemName:@"Red Sofa"];
        item.itemName = @"Carpenter";
        
        // Create an NSString and give to serial number
        [item setSerialNumber:@"DL4218"];
        item.serialNumber = @"DPL120912";
        
        // Send value of 100 to item
        [item setValueInDollars:100];
        //or acces instance variables directly!!!
        item.valueInDollars = 200;
        
        
        
        NSLog(@"%@, %@, %@, %d", [item getItemName], [item getSerialNumber],
              [item getDateCreated], [item getValueInDollars]);
        /* This does not work because class instance variables are private!!!
        NSLog(@"%@, %@, %@, %d", item.itemName, item.serialNumber, item.dateCreated, item.valueInDollars);
        */
        
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}
