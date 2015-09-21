#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
	@autoreleasepool {
		NSFileManager *fm;
		NSData *fileData;
		fm = [NSFileManager defaultManager];
		// Read the file newfile2
		fileData = [fm contentsAtPath: @"testfile.txt"];

		if(fileData == nil) {
			NSLog(@"File read failed.");
			return 1;
		}
		// write the data to newfile
		if([fm createFileAtPath: @"newfile.txt" contents: fileData
			attributes: nil] == NO) {
			NSLog(@"Couldn't create the copy!");
			return 2;
		}
		NSLog(@"File copy was successful!");
	}
	return 0;
}
