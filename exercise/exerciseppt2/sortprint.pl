# !/bin/perl
#Sorting in Alphabetical order

use strict;
use warings;

print "Enter names \n";
my @names = (); 
my $name;

for(my $i =0 ; $i <=5 ; $i++){
  $name = <STDIN>;
  chomp $name;
  push(@names, $name);
}

print "@names \n";



my @sortedNames = sort @names;
print "Sorted names : @sortedNames \n";
