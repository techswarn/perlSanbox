#! /usr/bin/perl

use strict;
use warnings;

my $filename = 'C:\Data\Codes\learnPerlgit\07perlFIlehandling\test.txt';

my $str = <<END;
This is the sample text
that is used to write to filed
END


open(FH, '>', $filename) or die $!;

print FH $str;
close(FH);

print "Successfully edited the file \n";

