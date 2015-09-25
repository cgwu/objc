#!/usr/bin/perl
use 5.010;
use utf8;
use warnings;
use diagnostics;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

my $name = 'Fred flintstone';
print "I found Fred in the name!\n" if $name =~  /Fred/;
#print "I found Fred in the name! ~~ \n" if $name ~~  /Fred/;

given ( $ARGV[0] ) {
	when ('Fred') { say 'Name is Fred' }
	when ( /fred/i ) { say 'Name has fred in it' }
	when ( /\AFred/ ) { say 'Name starts with Fred' }
	default { say "I don't see a Fred"}
}


my %names = (
	"barney" => 195,
	"fred" => 205,
	"dino" => 30,
	"bamm-bamm" => 195
);
say '-------';

my @users = qw (fred Fred FredFlintstone hello world);
foreach(@users){
when ('Fred') { say 'Name is Fred' }
	when ( /fred/i ) { say 'Name has fred in it' }
	when ( /\AFred/ ) { say 'Name starts with Fred' }
	default { say "I don't see a Fred"}
}