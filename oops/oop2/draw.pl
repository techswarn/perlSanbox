#! /usr/bin/perl
use strict;
use warnings;
use lib 'lib/';
use Shape;

# create a new Shape object
my $shape = Shape->new({
    color=>'red',
    length=>2,
    width=>1,
});

# print the shape object attributes
say $shape->{color};
say $shape->{length};
say $shape->{width};