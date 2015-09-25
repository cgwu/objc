#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

my $stuff = "Howdy world!";
$where = index($stuff, "w");
say $where;
$where2 = index($stuff, "w", $where + 1);	# 最后一个参数，开始搜索下标位置
say $where2;
$where3 = index($stuff, "w", $where2 + 1);
say $where3;

my $last_slash = rindex("/etc/passwd", "/");
say $last_slash;

# substr操作子串
# my $part = substr($string, $initial_position, $length);
my $mineral = substr("Fred J. Flintstone", 8, 5);
say $mineral;
my $rock = substr "Fred J. Flintstone", 13, 1000;
say $rock;

my $out = substr "some very long string", -3, 2;
say $out;

my $string = "some very long string";
my $previous_value = substr($string, 5, 4, "goodbye");  # 第4个参数是替换串
say $string;
say $previous_value;

my $formated_str = sprintf "str:%s, int:%d, float:%-10.2f, double:%g",
	"Hello中国", 23434, 3.1415, 2 ** 38;
say $formated_str;

say oct('0b1101');

say 1 <=> 20;   # -1
say 30 <=> 30;	# 0
say 20 <=> 1;   # 1

say "aaa" cmp "bbb";
say "zaaa" cmp "bbb";
say "ccc" cmp "ccc";

my %score = (
	"barney" => 195,
	"fred" => 205,
	"dino" => 30,
	"bamm-bamm" => 195
);
sub by_score_and_name {
	$score{$b} <=> $score{$a}
		or
	$a cmp $b
}

my @winners = sort by_score_and_name keys %score;
say @winners;









