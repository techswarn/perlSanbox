#! /usr/bin/perl

use strict;
use warnings;


# my $src = 'C:\Data\Codes\learnPerlgit\07perlFIlehandling\test.txt';
# my $des = 'C:\Data\Codes\learnPerlgit\07perlFIlehandling\test2.txt';

my $src = shift @ARGV;
my $des = shift @ARGV;

open(SRC , '<', $src) or die $!;
open(DES , '>', $des) or die $!;

while(<SRC>){
    print DES $_;
}

close(SRC);
close(DES);

print "Copied successfully \n";