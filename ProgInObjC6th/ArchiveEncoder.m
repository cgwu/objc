#import <Foundation/Foundation.h>

@interface Foo: NSObject <NSCoding>
@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;

-(void) print;
@end

@implementation Foo 
@synthesize strVal, intVal, floatVal;
-(void) print {
	NSLog(@"str:%@, int:%i, float:%g", strVal, intVal, floatVal);
}

-(void) encodeWithCoder: (NSCoder *) encoder {
	[encoder encodeObject: strVal forKey: @"FoostrVal"];
	[encoder encodeInt: intVal forKey: @"FoointVal"];
	[encoder encodeFloat: floatVal forKey: @"FoofloatVal"];
}
-(id) initWithCoder: (NSCoder *) decoder {
	strVal = [decoder decodeObjectForKey: @"FoostrVal"];
	intVal = [decoder decodeIntForKey: @"FoointVal"];
	floatVal = [decoder decodeFloatForKey: @"FoofloatVal"];
	return self;
}

@end


int main(int argc, char * argv[]) {
	@autoreleasepool {
		Foo *foo1 = [[Foo alloc] init];
		foo1.strVal = @"Hello中国";
		[foo1 print];

		Foo *foo2 = [[Foo alloc] init];
		foo2.strVal = foo1.strVal;
		[foo2 print];
		
		printf("------\n");
		foo2.strVal = @"Hello世界";
		[foo1 print];
		[foo2 print];

		printf("archive & unarchive------\n");
		foo1.intVal = 12345;
		foo1.floatVal = 98.6;

		[NSKeyedArchiver archiveRootObject: foo1 toFile: @"foo.arch"];
		Foo * foo1restore = [NSKeyedUnarchiver unarchiveObjectWithFile: @"foo.arch"];
		[foo1restore print];
	}
	return 0;
}
