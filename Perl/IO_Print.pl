#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');


if(! open LOG, '>>:utf8', '/Users/user/Documents/log.txt') {
	die "Cannot open log.txt: ($!)";
}

printf LOG "str: %s, int: %d, float: %f !\n", "Hello中国", 321341234, 3.1415926;

printf STDERR "%g %g %g \n", 5/2, 51/17, 51 ** 17;

my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ( "%10s\n" x @items );
printf LOG $format, @items;

close LOG;