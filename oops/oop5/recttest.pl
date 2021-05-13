#! /usr/bin/perl
use strict;
use warnings;
require './Rectangle.pm';
my $w=3;
my $l=4;

my $rect = new Rectangle($w, $l);
my $area = $rect->getArea();
print "$area \n";

my $b= $rect->getBoundry();

print "Boundry: $b \n";