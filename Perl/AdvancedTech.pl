#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

# 切片
my @digits = qw( zero one two three four five six seven eight nine );
my @numbers = @digits [ 1, 9, 8, 8, 0, 1, 1, 7];
say "找到的数据: @numbers";

my $record = 'fred flintstone:2168:301 Cobblestone Way:555-2121:3';
my ($car_num, $count) = ( split /:/, $record )[1,4];
say "$car_num , $count";

$numerator = 10;
$denumerator = 2;
eval {
	$result = $numerator / $denumerator;
};
if ($@) {
	say "除法发生错误。";
	exit;
}
say $result;

$result2 = eval { 10 / 0 } // 'NAN';
say $result2;


