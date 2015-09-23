#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

print "hello中国\n";

say "say Hello中国";

print 123_456_789;
print "\n\x{2668}\n";

say "abc中国ef" x 3;
say 5 x 5;

say "12" * '3';
