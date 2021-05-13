# /bin/perl
# Calculate and print Bill for following items purchased
use strict;
use warnings;

my $rice = 5;
my $soap = 10;

my $riceCost = 27;
my $soapCost = 5;

my $total = ($rice * $riceCost) + ($soap * $soapCost);

print "Bill for 5kg of rice and 10 number of soap is $total \n";