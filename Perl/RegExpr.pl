#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

$_ = "yabba dabba doo";
if(/abba/) {
	say "It matched!";
}
if(/(fred)+/) {
	say "It matched!";
}
#i 不区分大小写
#u Unicode匹配模式
#默认情况下，点号(.)无法匹配换行符，可在pattern后面加上/s，即可包含换行符
$_ = "I saw Barney\ndown at the 中国bowling alley\nwith Fred\nlast night.\n";
if(/barney.*Fred/siu){
	say 'match!';
}
else {
	say 'not match!';
}
say '---------------';
=pod 
while(<STDIN>){
	print if /\AHello.*\.png\Z/;	#匹配以Hello开头, .png结尾的输入。
}
=cut
my $some_other = "I dream of betty a 爱rubble.";
if($some_other =~ /\b爱rub/) {		# =~ 意为: 测试前面的变量，默认为 $_
	say "Aye, there's the rub."; 	# \b匹配单词边界
}

$_ = "Hello there, neightbor";
if(/(\S+) (\S+), (\S+)/) {
	say "words were: $1 $2 $3";
}
# 捕获命名
my $names = 'Fred or 张三';
if( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/) {
	say "I saw $+{name1} and $+{name2}";
}
# 使用'捕获标签'之后，'反向引用'的用法也随之改变，之前我们用\1或者\g{1}这样的写法，
# 现在我们可以使用\g{label}这样的写法:
$names = 'Fred Flintstone and Wilma Flintstone';
if( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/){
	say "I saw $+{last_name}";
}
else{
	say "not found";
}







