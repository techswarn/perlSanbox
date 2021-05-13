#! /usr/bin/perl

#Check if the number is odd or even.

print "Enter number: ";
my $val = <STDIN>;
chomp $val;

sub checkNumber {
 my $num = shift;
    #or $num = $_[0] or my $num = @_
    ($num % 2 == 0) ? print "$num is even \n" : print "$num is odd";
}

checkNumber($val);
