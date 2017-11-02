//
//  Item.h
//  RandomItems
//
//  Created by David P. Lopez on 11/2/17.
//  Copyright © 2017 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

- (void)setItemName:(NSString *)itmName;
-(NSString *)getItemName;

- (void)setSerialNumber:(NSString *)snum;
-(NSString *)getSerialNumber;

- (void)setValueInDollars:(int)val;
-(int)getValueInDollars;

-(NSDate *)getDateCreated;
@end
