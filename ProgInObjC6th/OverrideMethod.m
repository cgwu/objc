// Overriding Methods
#import <Foundation/Foundation.h>

// ClassA declaration and definition
@interface ClassA: NSObject {
	int x; // Will be inherited by subclasses 
}
-(void) initVar;
@end
	 //////////////////////////// 

@implementation ClassA 
-(void) initVar
{
	x = 100;
} 
@end

// ClassB declaration and definition
@interface ClassB: ClassA 
-(void) initVar;
-(void) printVar;
@end 

//////////////////////////// 
@implementation ClassB

-(void) initVar {
	x = 200; 
}
-(void) printVar {
	// added method
	NSLog (@"ClassB.x = %i", x); 
}
@end
////////////////////////////

// ClassB declaration and definition
@interface ClassFoo: NSObject
@property int x;
-(void) initVar;
-(void) printVar;
-(void) funcFoo;
@end 

//////////////////////////// 
@implementation ClassFoo
@synthesize x;
-(void) initVar {
	x = 123; 
}
-(void) printVar {
	// added method
	NSLog (@"Foo.x = %i", x); 
}
-(void) funcFoo {
	NSLog(@"额外的funcFoo方法");
}
@end
////////////////////////////


int main (int argc, char * argv[]) {
	@autoreleasepool {
		NSLog(@"使用父类的指针:");
		ClassA *b = [[ClassB alloc] init];
		[b initVar]; // uses overriding method in B
		[(ClassB *)b printVar]; // reveal value of x; }

		NSLog(@"----------------");
		id dataValue = b;
		[dataValue printVar];

		ClassFoo *cf = [[ClassFoo alloc] init];
		[cf initVar];
		dataValue = cf;
		[dataValue printVar];
		[dataValue funcFoo];
		NSLog(@"--------%@--------",@"字符串格式化测试！！");


	}
	return 0;
}
