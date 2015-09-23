#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

$n = 0;
#marine();
sub marine {
	$n += 1;
	print "Hello, sailor number $n !\n";
}
marine();
&marine;
&marine;
marine;

$result = &marine;
say $result;

sub sum_of_fred_and_barney {
	print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
	$fred + $barney;
}
$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;
print "\$wilma is $wilma.\n";

sub max {
	if($_[0] > $_[1]) {
		$_[0]
	}
	else {
		$_[1]
	}
}
sub max2 {
	$_[0] > $_[1] ?  $_[0] : $_[1];
}
sub max3 {
	if(@_ != 2) {
		say '参数个数应该为2';
	}
	my($m,$n);	#该语句块中的新私有变量, 词法变量(lexical variable), 也称有限作用域变量(scoped variable)
	($m,$n) = @_;	#将参数赋给变量
	$m > $n ? $m : $n;
}
sub max4 {
	my($max_so_far)  =  shift @_;
	foreach (@_) {
		if($_ > $max_so_far) { 
			$max_so_far = $_;
		}
	}
	$max_so_far;
}

say &max(10,15);
say &max2(1000,150);
say &max3(-1000,-150,1);
say &max4(600,550,1,9999,0);

say '-------------';

@arr = qw (hello world 中国);
say @arr;
if(@arr == 3) {		#数组判断时，自动转为数组元素个数
	say 'len of arr is 3';
}
shift @arr;	#移除数组第一个元素并返回
say @arr;

sub chomp {
	print "Much, munch!\n";
}

&chomp;		# 此处一定要加上&，否则会调用perl的内置函数。

sub running_cnt {
	state $cnt = 0;
	++$cnt;
	say "running_cnt called: $cnt";
}
running_cnt();
running_cnt();
running_cnt();






















