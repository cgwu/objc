//
//  main+copy.m
//  Fraction
//
//  Created by test5d on 14-10-3.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

int main_copy(int argc, char *argv[]){
    @autoreleasepool {
        
        NSMutableArray *arr1 = [NSMutableArray arrayWithObjects:
                                [NSMutableString stringWithString:@"one"],
                                [NSMutableString stringWithString:@"two"],
                                [NSMutableString stringWithString:@"three"], nil];
        NSMutableString *s;
        for (s in arr1) {
            NSLog(@"%@",s);
        }
        
        NSMutableArray *arr2 = [arr1 mutableCopy];
        s = [arr1 objectAtIndex:0];
        [s appendString:@"ONE" ];
        
        NSLog(@"-----");
        for (s in arr1) {
            NSLog(@"%@",s);
        }
        NSLog(@"-----");
        for (s in arr2) {
            NSLog(@"%@",s);
        }
    }
    return 0;
}