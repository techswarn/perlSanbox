#! /usr/bin/perl

use strict;
use warnings;

#Input email address. Check if it is valid using function.

print "Email : ";
my $str = <STDIN>;
chomp $str;

checkEmail($str);

sub checkEmail{

 ($str =~ /^[a-z0-9.]+\@[a-z0-9.-]+$/) ? print "Successfull \n" : print "Not a valid email address \n";

}
