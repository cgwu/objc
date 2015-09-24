#!/usr/bin/perl
=pod
install commands:
1. sudo perl -MCPAN -e shell
2. install Devel::REPL
=cut
use Devel::REPL;
print "Start a Devel::REPL setting. Type exit to stop.\n";
my $repl = Devel::REPL->new;
$repl->load_plugin($_) for qw(History LexEnv);
$repl->run;