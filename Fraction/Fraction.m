//
//  Fraction.m
//  Fraction
//
//  Created by test5d on 14-9-29.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import "Fraction.h"
#import "FractionSign.h"

@implementation Fraction
@synthesize numerator, denominator, uuid;

-(void) setTo:(int) a over:(int) b{
    self.numerator = a;
    self.denominator = b;
}

-(void)print{
    NSLog(@"uuid=%d[%d/%d]",self.uuid,self.numerator,self.denominator);
}
@end
