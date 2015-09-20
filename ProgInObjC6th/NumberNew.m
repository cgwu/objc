#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSLog(@"新的语法，在常量加上@符号，自动转为包装类NSNumber!");
		NSNumber *myNumber, *floatNumber, *intNumber;
		NSInteger myInt;
		// integer value
		intNumber = @100;
		myInt = [intNumber integerValue];
		NSLog(@"%li", (long)myInt);
		// long value
		myNumber = @0xabcdef;
		NSLog(@"%lx,sizeof(long):%lu", [myNumber longValue], 
			sizeof(long));
		// char value
		myNumber = @'X';
		NSLog(@"%c", [myNumber charValue]);
		// float value
		floatNumber = @100.00;
		NSLog(@"%g", [floatNumber floatValue]);
		// double value
		myNumber = @12345e+15;
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
		int a = 30, b = 20;
		NSNumber * avg = @((a + b) / 2);
		NSLog(@"avg = %i", [avg intValue]);
		NSLog(@"avg = %@, str = %@", avg, @"Hello中国");
	}
	return 0;
}


