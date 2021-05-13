#! /bin/perl

use strict;
use warnings;


print "Enter the Number: ";

my $square = 0;
my $num = <STDIN>;
chomp $num;

$square = $num * $num;
print "The Square of $num is $square \n";



