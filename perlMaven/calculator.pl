#! /usr/bin/perl

use strict;
use warnings;

my $operation;
my $num1;
my $num2;
my $result;
my $runagain;

sub calculator{

    print "What function you wish to perform (example: add, sub, division, multiplication)? \n";
    chomp ($operation = <STDIN>);

    if
    
    print "Enter the first number: \n";
    chomp ($num1 = <STDIN>);
    print "Enter the second number: \n";
    chomp ($num2 = <STDIN>);

    if($operation eq 'add') {
        return $num1 + $num2;
    } elsif($operation eq 'sub'){
        return $num1 * $num2;
    } elsif($operation eq 'division'){
        return $num1 / $num2;
    }else{
        return $num1 * $num2;
    }

}

$result = calculator(2,3);
print "$result";