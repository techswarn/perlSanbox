#! bin/perl
use strict;
use warnings;

my $filename = 'C:\Data\Codes\learnPerlgit\07perlFIlehandling\test.txt';

open(FH, '<', $filename) or die $!;

print("File $filename was openned successfully \n");

close(FH);
