#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSDictionary * glossary = @{
			@"abstract class" :
				@"抽象类：A class defined so other classes can inherited from it.",
			@"adopt" :
				@"To implement all the methods defined in a protocol.",
			@"archiving" :
				@"Storing an object for later use."
		};
		// property list archive
		if([glossary writeToFile: @"glossary.plist" atomically: YES] == NO) {
			NSLog(@"Save to file failed!");
		}
		//key archive
		[NSKeyedArchiver archiveRootObject: glossary toFile: @"glossary.archive"];
	}
	return 0;
}
