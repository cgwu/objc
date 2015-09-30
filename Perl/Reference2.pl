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

say 'done';


__END__
