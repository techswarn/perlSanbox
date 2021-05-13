#! /usr/bin/perl

use strict;
use warnings;

sub myOffice {
    print "I'm learing subroutine \n";
}

myOffice();

#Perl subroutine function with arguments

my $squarePerimeter = perimeter(25);
my $dimension;
print "This is a perimeter of square with dimension 25: $squarePerimeter\n";

sub perimeter {
 $dimension = $_[0];
 return(4 * $dimension);
}
