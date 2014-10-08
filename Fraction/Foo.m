//
//  Foo.m
//  Fraction
//
//  Created by test5d on 14-10-8.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import "Foo.h"

@implementation Foo

@synthesize strVal, intVal, floatVal;

-(void) encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:strVal forKey:@"FooStrVal"];
    [aCoder encodeInt:intVal forKey:@"FooIntVal"];
    [aCoder encodeFloat:floatVal forKey:@"FooFloatVal"];
}

-(id) initWithCoder:(NSCoder *)aDecoder{
    strVal = [aDecoder decodeObjectForKey:@"FooStrVal"];
    intVal = [aDecoder decodeInt32ForKey:@"FooIntVal"];
    floatVal = [aDecoder decodeFloatForKey:@"FooFloatVal"];
    return self;
}
-(void) print{
    NSLog(@"str:%@; int:%i, float:%f", strVal,intVal,floatVal);
}
@end
