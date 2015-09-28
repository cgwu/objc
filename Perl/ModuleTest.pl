#!/usr/bin/perl
use 5.010;
use utf8;
use strict;
use warnings;
use diagnostics;

use File::Basename;
use Math::BigInt;
use Spreadsheet::WriteExcel;

binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

my $full_path = "/abc/efg/_Template.pl";
my $basename = basename($full_path);
my $dirname = dirname($full_path);
say $basename;
say $dirname;

my $value = Math::BigInt->new(2);   # start with 2
$value->bpow(1000);					# take 2**1000
say $value->bstr;					# print out

# Create a new Excel workbook
my $workbook = Spreadsheet::WriteExcel->new('perl.xls');

# Add a worksheet
my $worksheet = $workbook->add_worksheet();
$worksheet->write('A1', '你好, Excel!');
# Write some numbers
$worksheet->write(2, 0,  3);          # Writes 3
$worksheet->write(3, 0,  3.00000);    # Writes 3
$worksheet->write(4, 0,  3.00001);    # Writes 3.00001
$worksheet->write(5, 0,  3.14159);    # TeX revision no.?
 
 
# Write some formulas
$worksheet->write(7, 0,  '=A3 + A6');
$worksheet->write(8, 0,  '=IF(A5>3,"Yes", "No")');
 
 
# Write a hyperlink
$worksheet->write(10, 0, 'https://metacpan.org/');
say 'write excel done.';

__END__

