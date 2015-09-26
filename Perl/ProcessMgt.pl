#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

#binmode(STDIN, ':encoding(utf8)');
#binmode(STDOUT, ':encoding(utf8)');
#binmode(STDERR, ':encoding(utf8)');

# 生成新进程的方式1: system
# system操作符的返回值是根据子进程的结束状态来决定的。在Unix里，退出值0代表正常
# 非零退出值代表有问题：
system 'date';

system 'ls -l $HOME';

#!system 'rm -rf /Users/user/Documents/' or die 'cannot delete the files.';

chomp(my $now = `date`);
say "The Time is now $now";

# 在列表上下文中使用反引号`
for(`who`){
	my($user, $tty, $date) = /(\S+)\s+(\S+)\s+(.*)/;
	say "name: $user at $tty when $date";
}