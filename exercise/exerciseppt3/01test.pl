# /bin/perl

use strict;
use warning;


my %account = ();

print "Enter fruit and price(blank line to stop) : \n";
while(chomp(my $rec = <STDIN>)){
    my($fruit, $price) = split(',', $rec);
    last unless($fruit);
    $account{$fruits} += $price;
    $account{'Total'} += $price;
}

print "Report: \n";

foreach my $fruit(keys %account){
    next if($fruit eq 'Total');
    
}

