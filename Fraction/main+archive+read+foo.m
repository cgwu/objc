//
//  main+archive+read+foo.m
//  Fraction
//
//  Created by test5d on 14-10-8.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, char *argv[]){
    @autoreleasepool {
        
        Foo *f1 = [[Foo alloc] init];
        f1.strVal = @"Hello中国";
        f1.intVal = 123;
        f1.floatVal = 3.14;
        
        [f1 print];
        
        Foo *f2 = [f1 mutableCopy];
        [f2 print];
        
    }
    return 0;
}