#Input a character. Print it 80 times in a single line.
# /bin/perl

use strict;
use warnings;

print "please enter the character: ";

my $char = <STDIN>;
my $count = 0;
chomp $char;

while($count <= 80){
    print "$char ";
    $count++;
}


