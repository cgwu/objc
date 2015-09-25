#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

$family_name{'fred'} = 'flintstone';
$family_name{'中国'} = '中国万岁';
$family_name{'%$#'} = 'some special chars';
say $family_name{'%$#'};

say '------------';

%some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello',
	'wilma', 1.72e30, 'betty', "bye\n");
@any_array = %some_hash;

print "@any_array\n";
say '------------';
say $some_hash{'2.5'} || 'nil';

my %last_name = (
	fred => 'flintstone',
	dino => 234234, # undef,
	barney => 'rubble',
	betty => 'rubble'
);
my @k = keys %last_name;
my @v = values %last_name;
say @k;
say @v;
say %last_name;
say '------------';
while(($key,$value) = each %last_name) {
	say "$key => $value";
}

if(exists $last_name{'fred'}) {
	say 'fred is exists';
}
delete $last_name{'fred'};
if(exists $last_name{'fred'}) {
	say 'fred is exists';
}
else {
	say 'fred is not exists';
}
say '-----%ENV hash-------';
say "PATH is $ENV{PATH}\n";


my %last_name2 = (
	fred => 'flintstone',
	dino => 0,
	barney => 'rubble',
	betty => 'rubble'
);
my $somename = $last_name2{'dino'};
# 短路 操作符 || ,若前表达式为假，则取后面的值。 缺点：若值为假，也替换了。
say $somename || 'undefined';	
# 定义或 操作符 //, 只有当前表达式为 undef时，才使用表达式后面的值。
say $somename // 'undef';	

$m = 1;
$n = 10;
#($m < $n) && ($m = $n);
#if($m < $n) { $m = $n; } 
$m = $n if $m < $n;
say "m = $m, n = $n";










