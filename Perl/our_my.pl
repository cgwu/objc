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
1. our 包变量
2. my 词法变量 (lexical variable), 只在块里面可以引用到。
=cut
our $var = 1;
{
	local $var = 2;
	say $var;
}
say $var;

=pod
3.local
把值局限于某个范围"，也有叫"动态词法范围",。我的理解，就是本层和本层下层的函数可以看到本层的变量，但是本层上一层的不可以。到底范围是多少，不仅取决于本层的函数，还要看下一层的程序长度和深度，所以叫"动态范围"。例如在某个函数中如果有local变量，则该函数中的所有函数都是可见的
=cut


sub greet1 {
    local $a="in greet1";
    &greet2;
}
sub greet2 {
    print "$a\n";
}
$a="hello world";
print "$a\n";
greet1;
greet2;

__END__