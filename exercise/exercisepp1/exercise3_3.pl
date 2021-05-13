#! /bin/perl
#Find largest of three numbers
use strict;
use warnings;

print "Enter 3 numbers with , separated : ";

my @numbers = ();

for(my $i=0; $i<3; $i++){
my $num = <STDIN>;
chomp $num;
push(@numbers, $num);
}

print "@numbers \n";

if($numbers[0] > $numbers[1]){
    if($numbers[0] > $numbers[2]){
     print "The greatest among entered numbers is $numbers[0] \n";
    } else {
     print "The greatest among entered numbers is $numbers[2] \n";
    }
} else {
 if($number[1] > $number[2]){
     print "The greatest among entered numbers is $numbers[1] \n";
 } else {
     print "The greatest among entered numbers is $numbers[2] \n";
 }
}

