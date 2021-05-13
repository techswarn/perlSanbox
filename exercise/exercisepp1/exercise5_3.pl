#! /bin/perl
#Input numbers till 0 is typed. Calculate and print total and highest.
use strict;
use warnings;

#
print "Enter number: \n";

my ($num, $sum) = (0,0);
my @arr;

do {
$num = <STDIN>;
chomp $num;
push(@arr, $num);

} while($num != 0);
my $max = @arr[0];
foreach my $item (@arr){
 $sum = $sum + $item;
 if($max < $item){
     $max = $item;
 }

}

print "zero was entered and sum of elements are $sum and the max value entered is $max \n";
#print "@arr";
#print "\n";
