#! /usr/bin/perl

use strict;
my $file = './data.csv';

open(FH, '<', $file) or die $!;


while(my $line = <FH>){
    chomp $line;

    my @words = split(", ", $line);

    for (my $i=0; $i<=0; $i++){
        print "$words[$i]";
    }
print "\n";
}