//
//  main+NSValue.m
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, char *argv[]){
    @autoreleasepool {
        CGPoint pt;
        pt.x = 1;
        pt.y = 2;
        NSValue * val = [NSValue valueWithPoint:pt];
        
        NSLog(@"%@",val);
    }
    
    return 0;
}