//
//  main+array.m
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]){
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray array];
        NSNumber *num;
        
        //设值
        for(int i=0;i<10;i++){
            num = [NSNumber numberWithInt:i];
            [arr addObject:num];
        }
        //取值
        for (int i=0; i<10; i++) {
            num = [arr objectAtIndex:i];
            NSLog(@"%@",num);
        }
        NSLog(@"-------");
        NSLog(@"%@",arr);
        
    }
    return 0;
}