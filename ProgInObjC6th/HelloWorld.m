//objc compile: clang -fobjc-arc files -o program
#import <Foundation/Foundation.h>

int main(int arg, const char * argv[]){
	@autoreleasepool{
		NSLog(@"Programming是很有趣的!");
	}
	return 0;
}