//
//  TestAppDelegate.m
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import "TestAppDelegate.h"

@implementation TestAppDelegate

- (void) processSuccessful: (BOOL)success{
    NSLog(@"you args:%d",success);
}
- (id) submitOrder: (NSNumber *) orderid{
    NSLog(@"Your orderid:%d",orderid.intValue);
    return orderid;
}
-(int) add:(int) a and:(int)b{
    return a+b;
}
@end
