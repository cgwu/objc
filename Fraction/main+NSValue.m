//
//  main+NSValue.m
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
int main_nsvalue(int argc, char *argv[]){
    @autoreleasepool {
        CGPoint pt;
        pt.x = 1;
        pt.y = 2;
        NSValue * val = [NSValue valueWithPoint:pt];
        
        NSLog(@"%@",val);
        
        NSLog(@"------------");
        // 字典测试
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        [glossary setObject:@"Hello中国" forKey:@"中 国"];
        [glossary setObject:@"~@~!#$ %$&% ^&%^&" forKey:@"Symbols"];
        [glossary setObject:@"World" forKey:@"hello"];
        
        NSLog(@"%@",[glossary valueForKey:@"中 国"]);
        NSLog(@"%@",[glossary valueForKey:@"Symbols"]);
        NSLog(@"%@",[glossary valueForKey:@"hello"]);
        NSLog(@"------------");
        for(NSString * key in glossary){
            NSLog(@"key=%@,value=%@",key,[glossary valueForKey:key]);
        }
    }
    
    return 0;
}