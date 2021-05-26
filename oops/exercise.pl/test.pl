#! /usr/bin/perl
require './Stats/Stats.pm';
use strict;
use warnings;

my ($e,$k,$m,$s) = (2,3,4,5);

my $statsCalc = new Stats($e,$k,$m,$s);


my $totalmarks = $statsCalc->total();
my $avgmarks = $statsCalc->average();
my $max = $statsCalc->maxNum();
my $min = $statsCalc->minNum();


print("The total marks is : $totalmarks , Average: $avgmarks, Maximum marks: $max, Minimum marks:  $min \n");