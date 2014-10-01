//
//  Fraction.h
//  Fraction
//
//  Created by test5d on 14-9-29.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator,denominator;

-(void) setTo:(int) a over:(int) b;
-(void) print;

@end
