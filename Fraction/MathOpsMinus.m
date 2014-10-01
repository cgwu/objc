//
//  MathOpsMinus.m
//  Fraction
//
//  Created by test5d on 14-9-30.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import "MathOpsMinus.h"

@implementation Fraction(MathOpsMinus)

-(Fraction *) minus:(Fraction *) rhs{
    Fraction * result  = [[Fraction alloc] init];
    result.numerator = self.numerator * rhs.denominator - self.denominator * rhs.numerator;
    result.denominator = self.denominator * rhs.denominator;
    return result;
}

@end
