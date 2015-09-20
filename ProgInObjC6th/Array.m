#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSArray *arr = @[@"January", @"Feburary", @"March", @"April", @"May"
			, @"June", @"Junly", @"August", @"September", @"October", @"November"
			, @"December"];
		for(NSString * item in arr) {
			NSLog(@"%@", item);
		}
		NSLog(@"----------");
		// NSMutableArray *marr = [[NSMutableArray alloc] init];
		NSMutableArray *marr = [NSMutableArray array];
		[marr addObjectsFromArray: arr];
		
		for(NSString * item in marr) {
			NSLog(@"%@", item);
		}
		NSLog(@"----------");
		[marr sortUsingComparator: 
			^(id obj1, id obj2) {
			return [obj1 compare: obj2]; 
		}];
		for(NSString * item in marr) {
			NSLog(@"%@", item);
		}
		
	}
	return 0;
}
