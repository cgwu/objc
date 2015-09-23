#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

print "hello中国\n";

say "say Hello中国";

print 123_456_789;
print "\n\x{2668}\n";

say "abc中国ef" x 3;
say 5 x 5;

say "12" * '3';

$中国='中国万岁';
$中国 .= "ohyeah";
say "我希望$中国";

$i = 13;
++$i;
$i++;
say $i;

if("hello" eq "hello") {
	say 'eq';
}
if("hello" gt "Hello") {
	say 'gt';
}


say !!"hello";
if(!!'0'){
	say 'true';
}
else{
	say 'false';
}

=pod
多行注释：
最常用的方法是使用 POD(Plain Old Documentations)
读入一行文本
$line = <STDIN>;
if($line eq "\n") {
	say 'empty line';
}
else{
	say "你输入了一行：$line";
}
=cut
$sum = 9;
say "undef sum val: $sum";
$sum = undef;		#赋为nil

$rock[0] = 'bedrock';
$rock[1] = 'slate';
$rock[2] = 'lava';
$rock[99] = '中国';

$end = $#rock;
say $end;
say $rock[$end], $rock[-1];

@array = 5..9;
$fred = pop @array;
$barney = pop @array;
pop (@array);
say $fred;
say $barney;

@rocks = qw{ flintstone slate rubble };
print "quartz: @rocks \n";
say $rocks[1];
say "----------------";

=pod
foreach $item (@rocks) {
	 $item = "||$item||";
}
say $rocks[0], $rocks[1], $rocks[2];
say "----------------";
=cut

foreach (1..10) {
	say "I can count to $_ !";
}
$_ = "Hello中国万岁\n";
print;

@fred = -9..9;
say @fred;
@barney = reverse @fred;
say @barney;

@sorted = sort @rocks;
say @sorted;

while(my($index, $value) = each @rocks) {
	say "$index: $value";
}

say "----------------";

@backwards = reverse qw / yabba dabba doo /;
$backwards = reverse qw / yabba dabba doo /;
say @backwards;
say $backwards;

@fred = 6*7;
say $fred[0];

chomp(@lines = <STDIN>);
say "1: $lines[0]; 2: $lines[1]";













