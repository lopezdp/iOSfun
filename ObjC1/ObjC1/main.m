//
//  main.m
//  ObjC1
//
//  Created by David P. Lopez on 8/22/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // variables
        int score1, score2, score3, score4, score5;
        float avg;
        char letterGrade;
        
        // prompt user for score1
        NSLog(@"what is the student's score1? ");
        scanf("%d", &score1);
        
        // prompt user for score2
        NSLog(@"what is the student's score2? ");
        scanf("%d", &score2);
        
        // prompt user for score3
        NSLog(@"what is the student's score3? ");
        scanf("%d", &score3);
        
        // prompt user for score4
        NSLog(@"what is the student's score4? ");
        scanf("%d", &score4);
        
        // prompt user for score5
        NSLog(@"what is the student's score5? ");
        scanf("%d", &score5);
        
        avg = (score1 + score2 + score3 + score4 + score5)/5.0;
        
        if(avg >= 90.0)
            letterGrade = 'A';
        else if (avg >= 80.0)
            letterGrade = 'B';
        else if (avg >= 70.0)
            letterGrade = 'C';
        else if (avg >= 60.0)
            letterGrade = 'D';
        else
            letterGrade = 'F';
        
        NSLog(@"The student's average is: %4.2f, and the letter grade is: %c", avg, letterGrade);
        
        
    }
    return 0;
}
