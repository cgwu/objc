#!/usr/bin/perl
use 5.010;
use utf8;
use strict;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

sub check_required_items {
	my $who = shift;
	my $items = shift;

	my %who_items = map { $_, 1 } @{ $items };

	my @required = qw(preserver sunscreen water_bottle jacket);
	for my $item (@required) {
		unless ( $who_items{$item} ) {	# not found in list?
			print "$who is missing $item.\n";
		}
	}
}
my @skipper = qw(blue_shirt hat jacket preserver sunscreen); 
check_required_items('The Skipper', \@skipper);		# \@取得数组的引用
my @professor = qw(sunscreen water_bottle slide_rule batteries radio); 
check_required_items('Professor', \@professor);
my @gilligan = qw(red_shirt hat lucky_socks water_bottle); 
check_required_items('Gilligan', \@gilligan);

say "--------------------";

sub check_required_items2 {
	my %who_items = map { $_, 1 } @{ $_[1] };	# 第2个参数转为map

	my @required = qw(preserver sunscreen water_bottle jacket);
	for my $item (@required) {
		unless ( $who_items{$item} ) {	# not found in list?
			print "$_[0] is missing $item.\n";
		}
	}
}
#my @skipper = qw(blue_shirt hat jacket preserver sunscreen); 
check_required_items2('The Skipper', \@skipper);
#my @professor = qw(sunscreen water_bottle slide_rule batteries radio); 
check_required_items2('Professor', \@professor);
#my @gilligan = qw(red_shirt hat lucky_socks water_bottle); 
check_required_items2('Gilligan', \@gilligan);


__END__


