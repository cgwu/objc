//
//  main+NSSet.m
//  Fraction
//
//  Created by test5d on 14-10-2.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INTOBJ(x) [NSNumber numberWithLong: x]

@interface NSSet(Printing)
-(void) print;
@end

@implementation NSSet(Printing)

-(void)print{
    printf("(");
    for( NSNumber *e in self){
        printf(" %ld ", [e longValue]);
    }
    printf(")\n");
}

@end

int main_nsset(int argc, char *argv[]){
    @autoreleasepool {
        NSMutableSet *s1 = [NSMutableSet setWithObjects:INTOBJ(1),INTOBJ(2),INTOBJ(321), nil];
        NSMutableSet *s2 = [NSMutableSet setWithObjects:INTOBJ(2),INTOBJ(1),INTOBJ(321), nil];
        NSMutableSet *s3 = [NSMutableSet setWithObjects:INTOBJ(-1),INTOBJ(2),INTOBJ(3321), nil];
        
        [s1 print];
        [s2 print];
        [s3 print];
        
        if ([s1 isEqualToSet:s2] == YES) {
            NSLog(@"s1 equales s2");
        }
        if ([s3 containsObject: INTOBJ(-1)]) {
            NSLog(@"s3 contains -1");
        }
        
        [s1 intersectSet: s3];
        [s1 print];
        
        [s2 unionSet:s3];
        [s2 print];
        
        
        
    }
    return 0;
}