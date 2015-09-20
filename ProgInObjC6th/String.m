#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSString *str1 = @"This is StringA";
		NSString *str2 = @"This is StringB";
		NSString *res;
		NSMutableString *mstr;
		NSComparisonResult compareResult;
		
		NSLog(@"len: %lu",[str1 length]);

		res = [NSString stringWithString: str1];
		NSLog(@"%@", res);

		compareResult = [str1 compare: str2];
		if(compareResult == NSOrderedAscending) {
			NSLog(@"str1 < str2");
		}
		else if(compareResult == NSOrderedSame) {
			NSLog(@"str1 == str2");	
		}
		else {
			// must be NSOrderedDescending
			NSLog(@"str1 > str2");
		}

		res = [str1 uppercaseString];
		NSLog(@"UpperCase:%s", [res UTF8String]);
		res = [str2 lowercaseString];
		NSLog(@"LowerCase:%@", res);

		// sub string
		res = [str1 substringToIndex: 3];	
		NSLog(@"%@", res);
		res = [str1 substringFromIndex: 3];	
		NSLog(@"%@", res);
		// Extract chars from index 8 through 13 (6 chars)
		res = [[str1 substringFromIndex: 8] substringToIndex: 6]; 
		NSLog (@"Chars from index 8 through 13: %@", res);
		res = [str1 substringWithRange: NSMakeRange(1,3)];
		NSLog (@"Chars from index 8 through 13: %@", res);

		// 可修改的String
		mstr = [NSMutableString stringWithString: str1];
		[mstr appendString: str2];
		NSLog(@"%@", mstr);

	}
	return 0;
}
