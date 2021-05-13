#Input word till 'exit' is typed. Print the longest word typed at the end
#! /bin/perl

use strict;
use warnings;

#
print "Enter the word: \n";
my ($lowerCase, $length);

my @arr =();
do{
my $word = <STDIN>;
chomp $word;
$lowerCase = lc($word);
$length = length($lowerCase);

push(@arr, $lowerCase);



}
while( $lowerCase ne "exit");

my $len = length $arr[0];
my $longest = 0;
for my $i(0..$#arr){
    my $i_len = length $arr[$i];
     print "$i \n";
    if($i_len > $len){
        $longest = $i;
       
        $len = $i_len;
    }
}
my $longestWord = $arr[$longest];


print "The words typed untill exit is typed are: @arr \n and the longest word is $longestWord \n";