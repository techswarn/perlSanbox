#! /bin/perl

use strict;
use warnings;

#
print "Enter name: \n";

my $name = <STDIN>;
chomp $name;
my $length = length($name);
print "$length \n";

while($length < 4 ){
    print "Enter name which has more than 3 characters, please enter the name again\n";
    $name = <STDIN>;
    chomp $name;
    $length = length($name);
}

print "$length \n";
