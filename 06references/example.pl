#! /bin/perl
use strict;
use warnings;

# #scalar references

# my $num;
# my $numref = \$num;
# ${$numref} = 35;
# print "${$numref} \n";

# #Array references

# my @val =(1..10);
# my $refval = \@val;
# #foreach(@{$refval}){
#  #   print "$_ \n";
# #}

# #Hash references

# my %val ={
#     'swarn' => 27,
#     'suraj' => 27,
#     'john doe' => 63,
# };

# my $valref = \%val;

# #foreach (keys %{$valref}){
#     print "$valref -> {$_} \n";
# #}

#Subroutine references

my $reffact = \&factorial;

sub factorial {

my $num = $_[0];
print "$num \n";
my $fact = 1;

foreach(2..$num){
    $fact *= $_;
}
return $fact;

}

print &{$reffact}(5);




