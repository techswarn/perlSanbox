#! /usr/bin/perl

use strict;
use warnings;

my $local = 0;
my $remote = 0;
my $file = './logs.txt';
open(my $fh, '<', $file) or die "File $file could not be found $!";

while(my $row = <$fh>){
    chomp $row;
     my $length = index($row, " ");
     my $ip = substr($row, 0, $length);
     if($ip eq "120.0.0.1" ) {
         $local++;
     } else {
         $remote++;
     }
};

print "Local IP count is $local and remote IP is $remote";
