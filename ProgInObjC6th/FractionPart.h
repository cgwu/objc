#import <Foundation/Foundation.h>

// 接口
@interface Fraction: NSObject

// 自动合成属性
@property int numerator, denominator;

-(void) print;
// -(void) setNumerator: (int) n;
// -(void) setDenominator: (int) d;
// -(int) numerator;
// -(int) denominator;

-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) reduce;

+(void) fooClassMethod;

@end