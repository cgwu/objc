//
//  TestAppDelegate.h
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProcessDataDelegate.h"
#import "TestAddDelegate.h"

@interface TestAppDelegate : NSObject <ProcessDataDelegate,TestAddDelegate>

@end
