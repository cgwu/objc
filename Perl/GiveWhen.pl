#!/usr/bin/perl
use v5.10;
use feature qw(switch);
use feature qw(:5.10);

$item = 'abc';

given ($item) {
      when (/a/)   { say "Matched an a"  }
      when (/bee/) { say "Matched a bee" }
}

$a = 1;
$b = 2;
say "\$a = $a, \$b = $b";
($a, $b) = ($b, $a);		# list assignments
say "\$a = $a, \$b = $b";
