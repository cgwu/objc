#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSString *fName = @"testfile.txt";
		NSString *fnewName = @"newfile.txt";
		NSFileManager *fm;
		NSDictionary *attr;
		NSError *err;

		// Need to create an instance of the file manager
		fm = [NSFileManager defaultManager];
		if([fm fileExistsAtPath: fName] == NO) {
			NSLog(@"File doesn't exist!");
			return 1;
		}
		// now let's make a copy
		if([fm copyItemAtPath: fName toPath: fnewName error: &err] == NO){
			NSLog(@"File copy failed, error: %@", err.localizedDescription);
			return 2;
		}
		// now let's test to see if the two files are equal
		if([fm contentsEqualAtPath: fName andPath: fnewName ] == NO) {
			NSLog(@"Files are NOT Equal!");
			return 3;
		}
		// rename the copy
		if([fm moveItemAtPath: fnewName toPath: @"newfile2.txt" error: NULL] == NO){
			NSLog(@"File rename failed.");
			return 4;
		}
		// get file size
		if((attr = [fm attributesOfItemAtPath: @"newfile2.txt" error: NULL]) == nil){
			NSLog(@"Couldn't get file attrs.");
			return 5;
		}
		NSLog(@"File size is %llu bytes.", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
		// remote the file
		if([fm removeItemAtPath: @"newfile2.txt" error: &err] == NO) {
			NSLog(@"file remove fail, error: %@", err.localizedDescription);
			return 6;
		}
		NSLog(@"All operations were successful.");
		NSLog(@"%@", [NSString stringWithContentsOfFile: fName 
			encoding: NSUTF8StringEncoding error: NULL]);

	}
	return 0;
}
