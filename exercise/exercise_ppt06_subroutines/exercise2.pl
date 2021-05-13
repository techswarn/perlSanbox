#! /usr/bin/perl

use strict;
use warnings;
#Input a name. Check if it is valid (has atleast 3 letters and one vowel). 

print "Enter a valid name: ";
my $str = <STDIN>;
chomp $str;

checkValid($str);

sub checkValid{
  my $len = length($str);
  
  if ( ($str =~m/.*[aeiouAEIOU]{1}.*/) && ($len >= 3) ){
      print "The name entered is valid \n";
  }else {
      print "The name entered is not valid \n";
  }
}


