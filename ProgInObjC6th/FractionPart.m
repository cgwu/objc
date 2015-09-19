
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