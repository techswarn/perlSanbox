#! /usr/bin/perl

my $value = 0;
my $luckynum = 7;

print "Guess a num between 1 and 10\n";

$value = <STDIN>;
while($value != $luckynum){
    print "Guess a number between 1 and 10\n";
    $value = <STDIN>;
}

print "Lucky number is 7";


