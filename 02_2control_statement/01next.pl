#! /usr/bin/perl

use warings;
use strict;

print "Type a number";
my $num = <STDIN>;
comp $num;

foreach my $val(1..$num){
  next if( $val % 5 == 0);
  print "$val";

}