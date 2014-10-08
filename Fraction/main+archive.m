//
//  main+archive.m
//  Fraction
//
//  Created by test5d on 14-10-7.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
int main_archive(int argc, char *argv[]){
    @autoreleasepool {
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"k1",@"v1",@"键2",@"值2", nil];
//        if ([dict writeToFile:@"dict.dat" atomically:YES]==NO) {
//            NSLog(@"write to file fail");
//            return 1;
//        }

        [NSKeyedArchiver archiveRootObject: dict toFile:@"keyData.xml"];
        NSLog(@"done");
    }
    return 0;
}