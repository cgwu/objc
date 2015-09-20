
#import "FractionPart.h"

// 实现
@implementation Fraction 
// {
// 	int numerator;
// 	int denominator;
// }

/* 指定合成属性名，若无该名，实例field名之前会加上'_':
You don’t need to use the @synthesize directive. 
Using the @property directive suffices. 
The compiler automatically generates the setter and getter for you. However, 
be advised that if you leave out @synthesize, then the compiler will generate 
the corresponding instance variables with an underscore (_) character as the 
first character of its name.
*/
@synthesize numerator, denominator;

// 自定义初始方法的标准模板
-(Fraction *) initWith: (int) n over: (int) d {
	self = [super init];
	if(self){
		[self setTo: n over: d];
	}
	return self;
}

-(void) setTo: (int) n over: (int) d {
	numerator = n;
	denominator = d;
}
-(double) convertToNum {
	if (denominator != 0) {
		return (double)numerator / (double)denominator;
	}
	else 
		return NAN;
}
-(void) add: (Fraction *) other {
	self.numerator = self.numerator * other.denominator +
		self.denominator * other.numerator;
	self.denominator *= other.denominator;
	[self reduce];
}
-(void) reduce {
	int u = numerator;
	int v = denominator;
	int temp = 0;
	// 求出最大公司数: u
	while (v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}
	numerator /= u;
	denominator /= u;
}

-(void) print {
	NSLog(@"%i/%i",numerator, denominator);
}

// -(void) setNumerator: (int) n {
// 	numerator = n;
// }

// -(void) setDenominator: (int) d {
// 	denominator = d;
// }

// -(int) numerator {
// 	return numerator;
// }
// -(int) denominator{
// 	return denominator;
// }


+(void) fooClassMethod {
	NSLog(@"This is a foo Class Method.");
}

@end