#! /bin/perl

use strict;
use warnings;

# Input numbers and calculate total and average


print "Enter 6 Numbers : \n";
my @numbers = ();
my $num;
for(my $i=0; $i<5; $i++){
    $num = <STDIN>;
    chomp $num;
    push(@numbers, $num);
}

print "Entered numbers are : @numbers \n";

#print total
my $len = scalar @numbers;
print "$len \n";
my $total=0;
my $avg = 0;
foreach my $item(@numbers){
    $total = $total + $item;
    $avg = $total / $len;
}
print "The sum of entered numbers are: $total and the average is: $avg \n";
