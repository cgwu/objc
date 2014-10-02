//
//  main+NSFileManager.m
//  Fraction
//
//  Created by test5d on 14-10-2.
//  Copyright (c) 2014年 test5d. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, char *argv[]){
    @autoreleasepool {
        NSString * fName = @"/Users/test5d/Documents/testFile.txt";
//        NSString * fName = @"~/Documents/testFile.txt";
        NSFileManager *fm;
        NSDictionary *attr;
        NSString *toFile = [@"~/Documents/toFile.txt" stringByExpandingTildeInPath];
        
        NSLog(@"Expand Path:%@",[@"~/Documents/testFile.txt" stringByExpandingTildeInPath]);
        NSLog(@"Expand Path:%@",[@"~user/Documents/testFile.txt" stringByExpandingTildeInPath]);
        
        fm = [NSFileManager defaultManager];
//        if ([fm fileExistsAtPath: [fName stringByExpandingTildeInPath]]==NO) {
        if ([fm fileExistsAtPath: fName]==NO) {
            NSLog(@"原文件不存在.");
            return 1;
        }
        else{
            NSLog(@"原文件存在");
        }
        
        if ([fm fileExistsAtPath:toFile]==NO) {
            //复制文件
            if([fm copyItemAtPath:fName toPath:toFile error:nil] == NO){
                NSLog(@"Copy file error.");
                return 2;
            }
            else{
                NSLog(@"Copy success!");
            }
        }
        
        if ([fm contentsEqualAtPath:fName andPath:toFile]) {
            NSLog(@"文件内容一致");
        }
        else{
            NSLog(@"文件内容不一致");
        }
        
        if ((attr =[fm attributesOfItemAtPath:toFile error:nil]) == nil) {
            NSLog(@"获取文件属性失败");
            return 3;
        }
        NSLog(@"文件大小:%llu", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
        
        //删除目标文件
        if ([fm removeItemAtPath:toFile error:nil] == NO) {
            NSLog(@"删除文件失败");
            return 4;
        }
        //显示文件内容
        NSLog(@"%@",[NSString stringWithContentsOfFile:fName encoding:NSUTF8StringEncoding error:nil]);
        
        // NSProcessInfo可获取当前进程的一些信息，如进程参数：argv,操作系统
        NSProcessInfo * info = [NSProcessInfo processInfo];
        NSLog(@"%@", [info operatingSystemVersionString] );
        NSLog(@"%@", [info operatingSystemName] );
        NSLog(@"%lu", [info operatingSystem] );
    }
    
    return 0;
}