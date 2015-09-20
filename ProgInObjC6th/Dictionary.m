#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSMutableDictionary *dict = [NSMutableDictionary dictionary];
		dict[@"abstract class"] = @"A class defined so other class can inherited from it.";
		dict[@"adopt"] = @"To implement all the methods defined in the protocal.";
		dict[@"archiving"] = @"Storing an object for later use.";

		NSLog(@"abstract class: %@", dict[@"abstract class"]);
		NSLog(@"adopt: %@", dict[@"adopt"]);
		NSLog(@"archiving: %@", dict[@"archiving"]);

		NSLog(@"-----------");
		NSDictionary *glossary =
			[NSDictionary dictionaryWithObjectsAndKeys:
				@"A class defined so other classes can inherit from it", 	// value
				@"abstract class",	// key
				@"To implement all the methods defined in a protocol", // value
				@"adopt",	// key
				@"Storing an object for later use",	// value
				@"archiving",	// key
				nil
			];
		NSDictionary *glossary2 = @{ 
			@"abstract class" :
				@"新A class defined so other classes can inherit from it", 
			@"adopt" : 
				@"新To implement all the methods defined in a protocol", 
			@"archiving" : 
				@"新Storing an object for later use"
			};
		// Print all key-value pairs from the dictionary
		for ( NSString *key in glossary2 )
			NSLog (@"%@: %@", key, [glossary2 objectForKey: key]);

	}
	return 0;
}
