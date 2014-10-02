//
//  main+NSURL.m
//  Fraction
//
//  Created by test5d on 14-10-2.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]){
    @autoreleasepool{
        NSURL *url = [NSURL URLWithString:@"http://www.baidu.com/"];
        NSString * homePage = [NSString stringWithContentsOfURL: url encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",homePage);
        
        NSLog(@"-----------");
        NSString *txtFilePath = [[NSBundle mainBundle] pathForResource:@"File.strings" ofType:@"txt"];
        NSString *testFile =[NSString stringWithContentsOfFile:txtFilePath encoding:NSUTF8StringEncoding  error:NULL];
        NSLog(@"%@",testFile);
    }
    return 0;
}