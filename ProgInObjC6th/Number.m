#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSNumber *myNumber, *floatNumber, *intNumber;
		NSInteger myInt;
		// integer value
		intNumber = [NSNumber numberWithInteger: 100];
		myInt = [intNumber integerValue];
		NSLog(@"%li", (long)myInt);
		// long value
		myNumber = [NSNumber numberWithLong: 0xabcdef];
		NSLog(@"%lx,sizeof(long):%lu", [myNumber longValue], 
			sizeof(long));
		// char value
		myNumber = [NSNumber numberWithChar: 'X'];
		NSLog(@"%c", [myNumber charValue]);
		// float value
		floatNumber = [NSNumber numberWithFloat: 100.00];
		NSLog(@"%g", [floatNumber floatValue]);
		// double value
		myNumber = [NSNumber numberWithDouble: 12345e+15];
		NSLog(@"%lg", [myNumber doubleValue]);
		// Wrong access here
		NSLog (@"%li", (long) [myNumber integerValue]);
		// Test two number for equality
		if([intNumber isEqualToNumber: floatNumber] == YES) {
			NSLog(@"numbers are equal");
		}
		else {
			NSLog(@"numbers are not equal");
		}
		// Test <, ==, or >
		if([intNumber compare: myNumber] == NSOrderedAscending) {
			NSLog(@"first number < second number");
		}  
	}
	return 0;
}