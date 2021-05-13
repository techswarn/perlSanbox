#! /usr/bin/perl

use strict;
use warnings;

sub myHash {
    my %hash = @_;
    
    foreach my $key (keys %hash){
        my $value = $hash{$key};
        print "$key: $value\n";
    }
}


my %hash = ('Chandrahas' => 'father', 'Reetha' => 'Mother', 'Swarn'=> 'Son');

myHash(%hash);



