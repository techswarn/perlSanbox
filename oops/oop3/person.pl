#! /usr/bin/perl
#Design a module stats. store values passed. calculate total, average, max , min, count
use strict;
use warnings;
use lib 'lib/';
use Student;

my $object = new Student("Swarn", 25);

#Name which is set using constructor

my $name = $object->studentName();
print "Name set using constructor is : $name \n";
#Name set using helper function

$object->studentRank("Anastasia");

#getting name set by helper function

$name = $object ->studentname();
print "Name set using helper is : $name\n";