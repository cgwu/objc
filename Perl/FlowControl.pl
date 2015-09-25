#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

unless (1 == 2) {		# unless 等同于 if (! )
	say "aaa";
}
else{
	say "bbb";
}

$cnt = 0;
until( $cnt == 6 ) {	# until 等同于 while(! )
	say "cnt: $cnt";
	$cnt ++;
}

$n = -1;
say "$n is a negative number." if $n < 0;		# 表达式修饰符

=pod
在Perl中，for 与 foreach实际上是等价的，也就是说，当Perl看到其中的任一一个时，
就好像看到另一个，Perl从后面的圆括号里的内容判断是for循环，还是foreach循环。
=cut
for($n = 0; $n < 5; $n++){
	say $n;
}
say ' <==>';
for(0..4) {
	say;
}
say ' <==>';
say for(0..4);

@person = qw (张三 李四 王五 麻子);
say $_ foreach(@person);
say "与下一句等同:";
say foreach(@person);
say "与下一句等同:";
say for(@person);

# 循环控制
foreach(1..10) {
	# if($_ == 5) { last; } 
	last if ($_ == 5);		# 等同上一句. last 相当于 C中的 break;
	next if ($_ == 3);		# next 相当于 Ｃ中的continue;
	print "$_\t";
}
print "\n";
# redo操作符
my @words = qw( fred barney pebbles dino wilma betty );
my @errors = 0;
foreach(@words) {
	## redo 指令会跳到这里
	print "Type the word '$_':";
	chomp(my $try = <STDIN>);
	if( $try ne $_ ) {
		print "Sorry - That's not right.\n\n";
		$errors++;
		redo;	##跳到循环的顶端(不会经过任何条件测试，也不会进入下一次循环迭代)
	}
}
say "You've completed the test, with $errors errors.";








