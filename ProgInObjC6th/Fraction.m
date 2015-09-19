#import <Foundation/Foundation.h>

// 接口
@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

+(void) fooClassMethod;

@end

// 实现
@implementation Fraction {
	int numerator;
	int denominator;
}

-(void) print {
	NSLog(@"%i/%i",numerator, denominator);
}

-(void) setNumerator: (int) n {
	numerator = n;
}

-(void) setDenominator: (int) d {
	denominator = d;
}

-(int) numerator {
	return numerator;
}
-(int) denominator{
	return denominator;
}


+(void) fooClassMethod {
	NSLog(@"This is a foo Class Method.");
}

@end

// 主程序
int main(int argc, char * argv[]) {
	@autoreleasepool {
		// Fraction *myFraction;
		// myFraction = [Fraction alloc];
		// myFraction = [myFraction init];
		Fraction *myFraction = [[Fraction alloc] init];
		[myFraction setNumerator: 1];
		[myFraction setDenominator: 3];

		NSLog(@"The Value of myFraction is:");
		[myFraction print];

		[Fraction fooClassMethod];

		NSLog(@"myFraction: numerator:%d, denominator:%d",
			myFraction.numerator, myFraction.denominator);

		NSLog(@"2nd way: myFraction: numerator:%d, denominator:%d",
			[myFraction numerator], [myFraction denominator]);

		NSLog(@"modulus:%i %% %i = %i", 7, -4, 7 % -4);
		int idx = 0;
		++idx;
		++ idx;
		idx++;
		idx ++;
		NSLog(@"idx=%i",idx);
		// NSLog(@"请输入新的idx值:");
		// scanf("%i", &idx);
		NSLog(@"new idx=%i",idx);

		for (int i = 0; i < 10; ++i)
		{
			NSLog(@"i=%i",i);
		}

		BOOL isSth = FALSE;
		NSLog(@"isSth:%i",isSth);
		isSth = TRUE;
		NSLog(@"isSth:%i",isSth);
		isSth = NO;
		NSLog(@"isSth:%i",isSth);
		isSth = YES;
		NSLog(@"isSth:%i",isSth);
	}
	return 0;
}