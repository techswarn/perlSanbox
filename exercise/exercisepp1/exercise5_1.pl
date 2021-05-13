#! /bin/perl
# Input word till 'stop' is typed. Print number of words typed (other than stop).
use strict;
use warnings;

#
print "Enter the word: \n";
my $lowerCase;
my $count=0;

do{
my $word = <STDIN>;
chomp $word;
$lowerCase = lc($word);

    if($lowerCase ne "stop"){
        $count++;
    }
}
while( $lowerCase ne "stop");
print "Stop was typed and the number of inputs are except stop are $count \n";

