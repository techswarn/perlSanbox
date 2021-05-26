#!/usr/bin/perl
require './Person/Person.pm';
use strict;
use warnings;


my $user = Person->new('Swarn', 1993, 'Web developer');

# my $details = $user->printDetails();

my $details = $user->printDetails();
print "$details\n";

my $age = $user->calcAge();
print "$age\n";