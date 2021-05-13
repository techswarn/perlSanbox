#! /usr/bin/perl
#Input a line of words. Print statistics of words in the line.
use strict;
use warnings;

print "enter line of words: ";

my @words = ();
my %stats;
my $str = <STDIN>;
chomp $str;
# split then by space so that they words can be listed as an array
@words = split(/ /, $str);

for my $i(@words){
   $stats{$i} += 1;  
   print $stats{$i} "\n";
}




foreach my $key(keys %stats){
    print "Word: $key : " . ($stats{$key}) . "\n";
}


