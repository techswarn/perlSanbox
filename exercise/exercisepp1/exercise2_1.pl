# /bin/perl

#Input a word. Print it upper case and lower case.
use strict;
use warnings;
print "Enter a word container both lower and upper case \n";
my $word = <STDIN>;
chomp $word;

my $uppercase = lc($word);
my $lowercase = uc($word);

print "The $word in upper case is $uppercase and in lower case is $lowercase \n";