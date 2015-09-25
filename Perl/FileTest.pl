#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

$filename = "./FlowControl_new.pl";
die "文件($filename)已经存在!" if -e $filename;

#打开目录
my $dir_to_process = '/etc';
opendir my $dh, $dir_to_process 
	or die "cannot open $dir_to_process: $!";
foreach $file (readdir $dh) {
	print "one file in $dir_to_process is $file\n";
}
closedir $dh;

# 删除文件
my $successful = unlink "a.txt", "b.txt", "c.txt";
print "I deleted $successful files just now\n";



