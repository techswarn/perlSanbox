#! /usr/bin/perl
#
use strict;
use warnings;
#Input a text. Replace aeiou in the text with !@#$% respectively.
print "Enter text: ";
my $text = <STDIN>;
chomp $text;


print "String entered is: $text \n";
my $newtext_1 = $text;

$newtext_1 =~ s/aeiou/!\@#\$\%/;
print "The first substituted of the string is $newtext_1 \n";

my $newtext_2 = $text;

$newtext_2 =~ tr/aeiou/AEIOU/;
print "The second substituted of the string is $newtext_2 \n";

