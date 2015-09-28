#!/usr/bin/perl
use 5.010;
use utf8;
use strict;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

=pod
grep的用法:
my @result = grep EXPR, @input_list
my $count = grep EXPR, @input_list
=cut

my @input_numbers = (1, 2, 4, 8, 16, 32, 64);
my @bigger_than_10 = grep $_ > 10, @input_numbers;
my $bigger_than_10_cnt = grep $_ > 10, @input_numbers;
say join(',', @bigger_than_10);
say $bigger_than_10_cnt;
my @end_in_4 = grep /4$/, @input_numbers;
say join(',', @end_in_4);

my $num = 31452;
my @digits = split //, $num;
say join(',', @digits);

my @odd_digit_sum = grep digit_sum_is_odd($_), @input_numbers;
sub digit_sum_is_odd {
	say "\$_: $_";
	my $input = shift;
	say "input: $input";
	my @digits = split //, $input; # Assume no nondigit characters my $sum;
	my $sum = 0;
	$sum += $_ for @digits;
	return $sum % 2;
}
say join(',', @input_numbers);
say join(',', @odd_digit_sum);
#法2: block
my @odd_digit_sum2 = grep {
	my $input = $_;
	my @digits = split //, $input; 
	my $sum;
	$sum += $_ for @digits;
	$sum % 2;
} @input_numbers;
say '法2: ',join(',', @odd_digit_sum2);
#法3: block
my @odd_digit_sum3 = grep {
	my $sum;
	$sum += $_ for split //;
	$sum % 2;
} @input_numbers;
say '法3: ',join(',', @odd_digit_sum3);

#my @one = 1;
#say (shift @one);
say 'test shift:';
sub shift_sub;		# 向前声明
shift_sub('a','b','c');
sub shift_sub(){
	my $a = shift;
	say "a: $a";
	my $b = shift;
	say "b: $b";
	my $c = shift;
	say "c: $c";
#	my $d = shift;
#	say "d: $d";
}

=pod
map: list 转换, 与grep参数一样，不过不是用来test.
=cut
my @result1 = map $_ + 100, @input_numbers;		# 表达式，需要,
say join(',', @result1);
# map返回2个值
my @result2 = map { $_, 3 * $_} @input_numbers; # blick, 不需要,
say join(',', @result2);
# 转为hash
my %hash = map {$_, 3 * $_} @input_numbers;
#say "$_" for %hash;
while(my($key,$value) = each %hash) {
	say "$key => $value";
}

#Dynamic Code with eval
my $sum;
eval '$sum = 2 + 2';
say "The sum is $sum";

foreach my $operator (qw(+ - * /)) {
	my $result = eval "2 $operator 2";
	say "2 $operator 2 is $result";
}

=pod
The do Block:
my $bowler;
if( ...some condition... ) {
	$bowler = 'Mary Ann'; 
}
elsif( ... some condition ... ) { 
	$bowler = 'Ginger';
}
else {
	$bowler = 'The Professor'; 
}
=>
my $bowler = do {
	if( ... some condition ... ) { 'Mary Ann' } 
	elsif( ... some condition ... ) { 'Ginger' }
	else { 'The Professor' }
};

=cut

__END__

