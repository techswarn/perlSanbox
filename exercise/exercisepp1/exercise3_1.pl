#! /bin/perl

#Find largest of two numbers

print "Enter first number: \n";
my $num1 = <STDIN>;
print "Enter second number: \n";
my $num2 = <STDIN>;
my $max;
chomp ($num1, $num2);


$max = ($num1 > $num2) ? $num1 : $num2;

print "Greatest of two numbers is $max \n";
