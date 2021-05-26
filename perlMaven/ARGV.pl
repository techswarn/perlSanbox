#/ usr/bin/perl

use strict;
use warnings;

#Command line parameters
@ARGV - all the arguments on the command line
$ARGC[0] - first arguments
$0 - name of the program


my $color;

if(defined $ARGV[0]){
    $color = $ARGV[0];
}

my @colors = qw(blue green red orange);

foreach my $i(0..$#colors){
    print "$i) $colors[$i] \n";
}

print "\n Enter number:";
my $num = <STDIN>;
chomp $num;

if(defined $colors[$num]){
    print " You have choose color: $colors[$num] \n";
} else {
    print "Invalid color selected \n";
}

