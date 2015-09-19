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

		NSLog(@"The Value of myFraction is:");
		[myFraction print];

		[Fraction fooClassMethod];

		NSLog(@"myFraction: numerator:%d, denominator:%d",
			myFraction.numerator, myFraction.denominator);

		NSLog(@"2nd way: myFraction: numerator:%d, denominator:%d",
			[myFraction numerator], [myFraction denominator]);

		NSLog(@"分开编绎v2");

	}
	return 0;
}