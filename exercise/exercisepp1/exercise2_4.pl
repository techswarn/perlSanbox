#! /bin/perl
#Input name. Print number of letters in the name.
use strict;
use warnings;

print "Enter the name: ";
my $name = <STDIN>;
chomp $name;
my $length = length($name);

print "The number of characters in the name is $length \n";

