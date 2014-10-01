//
//  ProcessDataDelegate.h
//  Fraction
//
//  Created by test5d on 14-10-1.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#ifndef Fraction_ProcessDataDelegate_h
#define Fraction_ProcessDataDelegate_h



@protocol ProcessDataDelegate

@required
- (void) processSuccessful: (BOOL)success;

@optional
- (id) submitOrder: (NSNumber *) orderid;

@end


#endif
