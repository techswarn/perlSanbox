#! /usr/bin/perl

use strict;
use warnings;

my $a = 9;

if($a == 5){
    print "$a is equal to 5\n";
} else {
    print "$a is not equal to 5\n";
}

# Nest if

my $b = 5;

if($b < 10){
    print "Print 1st inside if block";
    if($b < 5){
        print "$b is less than 5";
    } else {
        print "$b is greater than 5 and less than 10";
    }
} else {
    print "$b is greater than 10";
}


