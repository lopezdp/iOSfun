//
//  main.m
//  GradingStudents
//
//  Created by David P. Lopez on 8/24/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // ask the user to provide the number of exams
        int numExams;
        int testScore; //holds a test score
        int sum = 0; // accumulator
        double avg;
        char letterGrade = '\0';
        
        
        //prompt user for the number of exams
        NSLog(@"How many exams: ");
        scanf("%d", &numExams);
        
        for(int i = 0; i < numExams; i++)
        {
            NSLog(@"Test %d: ", i + 1);
            scanf("%d", &testScore);
            
            sum += testScore;
        }
        
        //compute the average
        avg = sum / (double) numExams;
        
        //display the average
        NSLog(@"Your average is: %.2f", avg);
        
        switch((int) avg)
        {
            case 0 ... 59:
                letterGrade = 'F';
                break;
                
            case 60 ... 69:
                letterGrade = 'D';
                break;
                
            case 70 ... 79:
                letterGrade = 'C';
                break;
                
            case 80 ... 89:
                letterGrade = 'B';
                break;
                
            case 90 ... 100:
                letterGrade = 'A';
                break;
        }
        
        NSLog(@"Your Letter Grade is: %c", letterGrade);
        
        if(avg >= 0.0 && avg < 60.0)
            letterGrade = 'F';
        else if(avg >= 60.0 && avg < 70.0)
            letterGrade = 'D';
        else if(avg >= 70.0 && avg < 80.0)
            letterGrade = 'C';
        else if(avg >= 80.0 && avg < 90.0)
            letterGrade = 'B';
        else if(avg >= 90.0 && avg <= 100.0)
            letterGrade = 'A';
        else
            NSLog(@"Your Letter Grade is bogus.");
        
        NSLog(@"Your Letter Grade is: %c", letterGrade);
        
        
    }
    return 0;
}
