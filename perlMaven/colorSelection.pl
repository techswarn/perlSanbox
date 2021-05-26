#! /usr/bin/perl

use strict;
use warnings;

my @colors = qw(blue green red orange);

foreach my $i(0..$#colors){
    print "$i) $colors[$i] \n";
}

print "\n Enter number:";
my $num = <STDIN>;
chomp $num;

if(defined $colors[$num]){
    print " You have choose color: $colors[$num] \n";
} else {
    print "Invalid color selected \n";
}

