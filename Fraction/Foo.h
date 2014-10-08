//
//  Foo.h
//  Fraction
//
//  Created by test5d on 14-10-8.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>

@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;

-(void) print;
@end
