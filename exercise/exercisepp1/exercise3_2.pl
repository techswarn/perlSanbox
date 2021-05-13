#! /bin/perl
=

#Find largest of two numbers

use strict;
use warnings;

print "Input the amount: ";
my $amount = <STDIN>;
chomp $amount;
my $discount = 25;
my ($discountedSum, $netAmount) = (0,0);

$discountedSum = ($amount * $discount) / 100;
$netAmount = $amount - $discountedSum;

($netAmount < 200) ? print "The Netamount is $netAmount \n" : print "The netamount is $netAmount, You have earned a bonus point of 3 \n";


