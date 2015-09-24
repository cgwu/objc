#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

$_ = "He's out bowling with Barney tonight.";
if( s/Barney/Fred/) {
	say "成功替换字符串!";
}
else{
	say "替换失败!";
}
print "$_\n";
say;	# 与上一句等同

s/with (\w+)/against $1's team/;  # $1 是前面的捕获
say;

$_ = "green scaly dinosaur";
s/(\w+) (\w+)/$2, $1/;
say;
s/^/huge, /;
say;
s/,.*een//;
say;
s/green/red/;
say;

$_ = "home, sweet home.";
s/home/cave/g;
say;

#不同的定界符,任意如'#'
$_ = "https://www.baidu.com";
s#https://#http://#;
say;

#split操作符
#my @fields = split /separator, $string;
my @fields = split /:/, "abc:def:g:h";
say @fields;
say $fields[0], ',' ,$fields[-1];
my $x = join '|', @fields;		# 用法： join $glue, @pieces;
say $x;

$_ = "Hello there, neighbor!";
my($first, $second, $third) = /(\S+) (\S+), (\S+)/;
say "$second is my $third";

my $text = "Fred dropped a 5 ton granite block on Mr. Sl1ate";
my @words = ($text =~ /([a-z]+)/ig);
say "Result: @words";

#贪婪匹配与非贪婪匹配
$_ = "I'm talking about the cartoon with Fred and <BOLD>Wilma</BOLD>,not <BOLD>Wilma</BOLD>";
#s#<BOLD>(.*)</BOLD>#$1#g;			#贪婪的
s#<BOLD>(.*?)</BOLD>#$1#g;			#非贪婪的
say;
=pod
^和$是代表整个字符串开头和结尾的锚位，当模式加上/m修饰符之后，就可以用它们匹配字符串内的每一行(m => multiple lines), 它们代表的位置就不再是整个字符串的开头和结尾，而是每行的开头和结尾。因此下面的模式成功。
=cut
$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";
say;
say "在行首找到Wilma" if /^wilma\b/im;























