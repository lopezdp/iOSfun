//
//  main.m
//  MultTables
//
//  Created by David P. Lopez on 8/24/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int matSize;
        
        NSLog(@"How columns & rows do you want on your multTable?");
        scanf("%d", &matSize);
        
        for(int i = 1; i <= matSize; i++)
        {
            for(int j = 1; j <= matSize; j++)
            {
                printf("%d ", i * j);
            }
            printf("\n");
        }

    }
    return 0;
}
