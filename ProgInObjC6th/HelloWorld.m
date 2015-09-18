//objc compile: clang -fobjc-arc files -o program
#import <Foundation/Foundation.h>

int main(int arg, const char * argv[]){
	@autoreleasepool{
		NSLog(@"Programming是很有趣的!");
		NSLog(@"Programming in Objective C is even more fun");
		int sum = 0;
		sum = 50 + 25;
		NSLog(@"The sum of 50 and 25 is %i", sum);
	}
	return 0;
}