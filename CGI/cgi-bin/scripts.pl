#! /usr/bin/perl

use strict;
use CGI ':standard';

my $name = param('name');
my $gender = param('gender');
my $profession = param('profession');
my @sports = param('sport');

my $list;

if(@sport){
    $list = join(', ', @sport);
} else {
    $list = 'Null';
}

print header;
start_html(-title=>$name),
h1("Hello, $name"),
h3 p('You have submitted the following data:'),
h4 table(Tr(td('Name:'),
h4 td($name)),
h4 tr(td('Gender:'),
h4 td($gender)),
h4 tr(td('Profession:'),
h4 td($profession)),
h4 tr(td('Sports:'),
h4 td($list))),
end_html;