#! /usr/bin/perl

use strict;
use warnings;
use v5.10;

my $random = int(rand(100));
print "$random\n";

my $num = <STDIN>;
chomp $num;

if($num < $random) {
    print "Yes \n";
} else {
    print "false \n";
}