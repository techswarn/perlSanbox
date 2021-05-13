#! /usr/bin/perl

use strict;
use warnings;

my $filename = 'C:\Data\Codes\learnPerlgit\07perlFIlehandling\test.txt';

open(FH, '<', $filename) or die $!;

while(<FH>){
    print $_;
}

close(FH);