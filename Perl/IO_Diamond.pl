#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

#输入可以来自键盘或其它设备，如文件,可以多个
while(<>) {
	#chomp;
	print $_;
}