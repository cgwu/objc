#import "FractionPart.h"
/*
编绎方法：
clang -fobjc-arc FractionPart.m -c
clang -fobjc-arc  FractionPartMain.m FractionPart.o
*/
// 主程序
int main(int argc, char * argv[]) {
	@autoreleasepool {
		// Fraction *myFraction;
		// myFraction = [Fraction alloc];
		// myFraction = [myFraction init];
		Fraction *myFraction = [[Fraction alloc] init];
		// [myFraction setNumerator: 1];
		// [myFraction setDenominator: 3];
		myFraction.numerator = 11;
		myFraction.denominator = 33;
		[myFraction setDenominator: 44];	//调用自动一成的set方法，与上一行等同

		NSLog(@"The Value of myFraction is:");
		[myFraction print];

		[myFraction setTo: 3 over: 12];
		NSLog(@"The new Value of myFraction is:");
		[myFraction print];
		NSLog(@"doubleValue:%f", [myFraction convertToNum]);
		[myFraction reduce];
		NSLog(@"The new Value of myFraction is after reduce:");
		[myFraction print];

		[Fraction fooClassMethod];

		NSLog(@"myFraction: numerator:%d, denominator:%d",
			myFraction.numerator, myFraction.denominator);

		NSLog(@"2nd way: myFraction: numerator:%d, denominator:%d",
			[myFraction numerator], [myFraction denominator]);

		NSLog(@"分开编绎v2------------");

		Fraction *other = [[Fraction alloc] init];
		[other setTo: 1 over: 12];
		[myFraction add: other];
		NSLog(@"The new Value of myFraction is:");
		[myFraction print];
	}
	return 0;
}