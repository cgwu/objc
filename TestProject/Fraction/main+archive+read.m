//
//  main+archive+read.m
//  Fraction
//
//  Created by test5d on 14-10-7.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
int main_archive_read(int argc, char *argv[]){
    @autoreleasepool {
//        NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"dict.dat"];

        NSDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:@"keyData.xml"];
        
        for (NSString * str in dict) {
            NSLog(@"key=%@,value=%@",str, [dict valueForKey:str]);
        }
        
    
    }
    
    return 0;
}