#! /usr/bin/perl
# Longest word and the length of the word
use strict;
use warnings;

print "Enter the text: ";
my $text = <STDIN>;
chomp $text;

my ($big, $count) = checkWord($text);

print "Longest: $big \n Number of words: $count \n";


sub checkWord{
my @words = ();
@words = split(/ /, $text);
my $long = '';
    # foreach (@words){
      
    # $long = $_ if(length $_ > length $long);
    # };
   for my $value(@words){
       print "$value \n";
       if(length $value > length $long){
           $long = $value;
       }
   }

my $count = @words;
return($long, $count);
}




