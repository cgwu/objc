#!/usr/bin/perl
use 5.010;
use utf8;
use strict;
use warnings;
use diagnostics;

use Carp qw(croak);

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

my @skipper = qw(blue_shirt hat jacket preserver sunscreen); 
my @skipper_with_name = ('Skipper' => \@skipper);

my @professor = qw(sunscreen water_bottle slide_rule batteries radio); 
my @professor_with_name = ('Professor' => \@professor);

my @gilligan = qw(red_shirt hat lucky_socks water_bottle); 
my @gilligan_with_name = ('Gilligan' => \@gilligan);

my @all_with_names = ( 
	\@skipper_with_name, 
	\@professor_with_name, 
	\@gilligan_with_name,
);

my $root = \@all_with_names;


say "$root −> [2][1][0]";

say "$skipper_with_name[0]";
say "$skipper_with_name[1]";
#say "$skipper_with_name[2]";

my %gilligan_info = (
	name => 'Gilligan', 
	hat => 'White', 
	shirt => 'Red', 
	position => 'First Mate',
);
my $hash_ref = \%gilligan_info;
my $ref_type = ref $hash_ref;
say $ref_type;
say $ref_type eq 'HASH';

croak "I expected a hash reference!"
	unless $ref_type eq 'HASH';

say "-----------数组引用-----------------";
my $arr1 = ['abc中国', [11,'abc',3.1415], 456789];
say "$arr1->[0]";
say "$arr1->[1][2]";
say $arr1->[2];

my @arr2 = ('abc' => 'efg' => 'hij');	
say "$arr2[0],$arr2[1],$arr2[2]";

say "------------ anonymous hash ----------------";
my $ref_to_gilligan_info = { 
	'full name' => 'Gilligan good', 
	hat => 'White',
	shirt => 'Red', 
	position => 'First Mate',
};
say $ref_to_gilligan_info->{'full name'};		# hash reference使用

my $coderef = sub { print "Boink!\n" }; 
&$coderef;		# 调用 anonymous subroutine

say 'done';


__END__
