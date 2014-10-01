//  测试Category,Extension,Protocol
//  main.m
//  Fraction
//
//  Created by test5d on 14-9-29.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"
#import "FractionSign.h"
#import "XYPoint.h"
#import "MathOps.h"
#import "MathOpsMinus.h"
#import "TestAppDelegate.h"

@interface ClassA : NSObject{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar{
    self->x = 100;
}
@end


@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar{
    NSLog(@"x=%d",x);
}
@end

void printMessage(){
    NSLog(@"Programming is fun.");
}

int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TestAppDelegate *pTestProtocol = [[TestAppDelegate alloc] init];
        [pTestProtocol processSuccessful:YES];
        int result = [pTestProtocol add:1 and:2];
        NSLog(@"result = %d",result);
        NSNumber * num = [NSNumber numberWithInt:110];
        [pTestProtocol submitOrder: num];
        
        /*
        void (^fPrintMessage)(void) = ^(void){
            NSLog(@"Programming非常有趣.");
        };
        fPrintMessage();
        fPrintMessage();
        fPrintMessage();
        
        int (^fAdd)(int,int) = ^(int a ,int b){
            return a+b;
        };
        NSLog(@"%d",fAdd(1,2));
        NSLog(@"%d",fAdd(11,22));
         */
        
//        printMessage();
        
        
//        Fraction * f1 = [[Fraction alloc] init];
//        [f1 setTo:1 over:2];
//        Fraction * f2 = [[Fraction alloc]init];
//        [f2 setTo:1 over:3];
//        
//        Fraction *f3 = [f1 add:f2];
//        [f3 print];
//        
//        Fraction *f4 = [f1 minus:f2];
//        f4.uuid = 3312;
//        [f4 print];
//        
//        BOOL b = 1;
//        Boolean bb = true;
//        NSAssert(b, @"b is false");
//        
//        NSLog(@"sizeof BOOL:%ld",sizeof(BOOL));
//        NSLog(@"sizeof Boolean:%ld",sizeof(Boolean));
//        NSLog(@"sizeof bool:%ld",sizeof(bool));
//        NSLog(@"sizeof boolean_t:%ld",sizeof(boolean_t));
        
        
//        XYPoint *pt = [[XYPoint alloc] init];
//        [pt setX:10 andY:20];
//        [pt print];
        
//        ClassB *pb = [[ClassB alloc] init];
//        [pb initVar];
//        [pb printVar];
//        
//        Fraction *frac1 = [[Fraction alloc] init];
//        [frac1 setTo:11 over:22];
//        [frac1 print];
        
    }
    return 0;
}
