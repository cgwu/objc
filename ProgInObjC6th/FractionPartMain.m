#import "FractionPart.h"
/*
编绎方法：
clang -fobjc-arc FractionPart.m -c
clang -fobjc-arc  FractionPartMain.m FractionPart.o
*/

//定义一个category
@interface Fraction (MathOps)

-(Fraction *) multiply: (Fraction *) other;

@end

@implementation Fraction (MathOps)

-(Fraction *) multiply: (Fraction *) other {
	Fraction * result = [[Fraction alloc] init];
	result.numerator = self.numerator * other.numerator;
	result.denominator = self.denominator * other.denominator;
	[result reduce];
	return result;
}

@end

void printMessage(){
	NSLog(@"Hello中国");
}

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

		NSLog(@"------category test------");
		Fraction * pa = [[Fraction alloc] initWith: 2 over: 6];
		Fraction * pb = [[Fraction alloc] initWith: 3 over: 6];
		Fraction * pc = [pa multiply: pb];
		NSLog(@"乘积:");
		[pc print];

		NSLog(@"------c test------");
		printMessage();
		NSLog(@"------block test------");
		void (^blockPrintMessage) (void) =
			^(void) {
				NSLog(@"Hello中国 from Obj C block");
			};
		blockPrintMessage();
		// 无参数也可不写void
		void (^blockPrintMessage1) () =
			^() {
				NSLog(@"1 Hello中国 from Obj C block");
			};
		blockPrintMessage1();
		//有参数的block
		void (^printNTimes)(int n) = ^(int n) {
			for (int i = 0; i < n; ++i)
			{
				NSLog(@"%i:Hello中国",i);
			}
		};
		printNTimes(3);
		NSLog(@"------------");
		printNTimes(5);
		// 有返回值的block
		int (^blockAdd) (int a, int b)  = ^ (int a, int b) {
			return a + b;
		};
		NSLog(@"11+22=%i", blockAdd(11,22));
		NSLog(@"------block修改外部变量------");
		__block int fooInt = 10;
		void (^printFoo) (void) = ^(void) {
			NSLog(@"block内输出foo:%i", fooInt);
			fooInt = 20;
		};
		fooInt = 15;
		printFoo();
		NSLog(@"fooInt=%i",fooInt);

	}
	return 0;
}

