#! /usr/bin/perl

use strict;
use warnings;

my $str = <<'END_STRING';
Some text
More text
END_STRING

print $str;

my $str = <<"OTHER_END_STRING";
Some text
More text
OTHER_END_STRING

print $str;