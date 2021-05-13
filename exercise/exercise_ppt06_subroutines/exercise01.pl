#! /usr/bin/perl

#Input a number. Calculate its factorial using function.

use strict;
use warnings;

print "Enter the number: ";
my $num1 = <STDIN>;

my $result = 0;

chomp $num1;
fact($num1);
sub fact{
my $num2 = $num1 - 1;
while($num2 > 0){
      $result = $num1 * $num2;
       $num1 = $result;
       $num2--;
}



print "Factorial of the entered number is $result \n";
}
