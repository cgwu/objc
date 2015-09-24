#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

=pod
while (<STDIN>) {
	print "I saw: $_";
}
等同于

while(defined($_ = <STDIN>)) {
	print "I saw: $_";
}
=cut

foreach (<STDIN>) {
	print "I saw: $_";
}