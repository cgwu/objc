#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSDictionary * glossary;
		// read from plist file
		glossary = [NSDictionary dictionaryWithContentsOfFile: @"glossary.plist"];
		for(NSString * key in glossary) {
			NSLog(@"key=%@,value=%@", key, glossary[key]);
		}

		printf("------------\n");
		//read from archive file
		NSDictionary * glossary2 = [NSKeyedUnarchiver unarchiveObjectWithFile:
			@"glossary.archive"];
		for(NSString *key in glossary2) {
			NSLog(@"key=%@,value=%@",key, glossary2[key]);
		}

	}
	return 0;
}
