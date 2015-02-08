//
//  main+hello.m
//  Fraction
//
//  Created by test5d on 15/2/8.
//  Copyright (c) 2015年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <stdlib.h>

void printHello(){
    NSLog(@"Programming is fun.");
}

@interface Hello : NSObject
@property (strong,nonatomic, getter=fullname) NSString *name;
@property int age;
@end

@implementation Hello
@synthesize name,age;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"HelloWorld");
        printHello();
        Hello *ph = [[Hello alloc]init];
        ph.name = @"张三";
        ph.age = 110;
        NSLog(@"ph.name=%@,age=%d",ph.fullname,ph.age);
        
    }
    printf("Hello中国\n");
    return 0;
}

