#! /usr/bin/perl

$str = "AEIOU";  
sub abc{  
   # Defining local variable  
   my $str;  
   $str = "AAABBBCCCDDD";  
   print "Inside the function local variable is called $str\n";  
}  
# Function call  
abc();  
print "Outside the function global variable is called $str\n";  