#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSURL *myURL = [NSURL URLWithString: @"http://www.baidu.com/"];
		NSString *content = [NSString stringWithContentsOfURL: myURL
			encoding: NSUTF8StringEncoding error: NULL];
		NSLog(@"%@", content);
	}
	return 0;
}
