//
//  main.m
//  BankingApp
//
//  Created by David P. Lopez on 8/24/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int menuSelect;
        
        do
        {
            NSLog(@"\n \n Please enter a number to select a menu item: \n 1. Make a Withdrawl \n 2. Make a Deposit \n 3. Balance Inquiry \n 4. Money Market \n 5. Exit \n");
            
            scanf("%d", &menuSelect);
            
            switch (menuSelect)
            {
                case 1:
                    NSLog(@"\n \n You Selected to make a Withdrawl \n");
                    break;
                case 2:
                    NSLog(@"\n \n You Selected to make a Deposit \n");
                    break;
                case 3:
                    NSLog(@"\n \n You Selected to make a Balance Inquiry \n");
                    break;
                case 4:
                    NSLog(@"\n \n You Selected to make a Money Market Transaction \n");
                    break;
                case 5:
                    NSLog(@"\n \n You Selected to Exit \n");
                    break;
                default:
                    NSLog(@"\n \n Please enter a menu selection!! \n");
                    break;
            }
        }while(menuSelect != 5);
        
    }
    return 0;
}
