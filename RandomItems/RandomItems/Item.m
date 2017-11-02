//
//  Item.m
//  RandomItems
//
//  Created by David P. Lopez on 11/2/17.
//  Copyright © 2017 David P. Lopez. All rights reserved.
//

#import "Item.h"

@implementation Item
/*
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}
*/
- (void)setItemName:(NSString *)itmName
{
    _itemName = itmName;
}
-(NSString *)getItemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)snum
{
    _serialNumber = snum;
}
-(NSString *)getSerialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)val
{
    _valueInDollars = val;
}
-(int)getValueInDollars
{
    return _valueInDollars;
}

-(NSDate *)getDateCreated
{
    return _dateCreated;
}

@end
