#! /usr/bin/perl

require './Hello.pm';
$h = new Hello;

print $h->greet("good morning \n");
print $h->greet2();