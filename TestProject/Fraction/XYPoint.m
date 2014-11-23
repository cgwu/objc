//
//  XYPoint.m
//  Fraction
//
//  Created by test5d on 14-9-30.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize x=_x,y=_y;
-(void) setX:(int)x andY:(int)y{
    _x = x;
    _y = y;
}
-(void)print{
    NSLog(@"x=%d,y=%d",_x,_y);
}

@end
