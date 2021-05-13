#! /bin/perl

#Print names with more than 5 charecters

use strict;
use warnings;


print "Enter 10 names \n";
my @names = (); 
my $name;
for(my $i=0 ; $i<10 ; $i++){
    $name = <STDIN>;
    chomp $name;
    push(@names, $name);
}

print "The list of entered names are : @names \n"; 

my $big;
my @bignames =();
foreach my $i(@names){
    $big = length($i);
    if($big > 5){
        push(@bignames, $i);
    }
}

print "The list of names with more than 5 characters are : @bignames \n";