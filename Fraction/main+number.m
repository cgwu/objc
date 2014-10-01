//
//  main+number.m
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]){
    @autoreleasepool {
        NSInteger myInt;
        NSNumber *intNumber = [NSNumber numberWithInt:10];
        myInt = [intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        NSLog(@"%i",[intNumber intValue]);
        
        NSNumber *longNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lX", [longNumber longValue]);
        
        NSNumber *charNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c", [charNumber charValue]);
        
        NSNumber *floatNumber = [NSNumber numberWithFloat:9.9999999];
        NSLog(@"%f", [floatNumber floatValue]);
        
        NSNumber *doubleNumber = [NSNumber numberWithDouble:1234e+15];
        NSLog(@"%lg",[doubleNumber doubleValue]);
        
        NSLog(@"%i", [doubleNumber intValue]);
        
        if([intNumber isEqualToNumber: floatNumber]==YES){
            NSLog(@"intNumber equals floatNumber");
        }
        else{
            NSLog(@"intNumber not equals floatNumber");
        }
        
        if([intNumber compare:doubleNumber] == NSOrderedAscending){
            NSLog(@"intNumber less than doubleNumber");
        }
    }
    return 0;
}