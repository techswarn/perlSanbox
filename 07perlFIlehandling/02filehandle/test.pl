#! /bin/perl

use Text::CSV;
use strict;
use warnings;

my $file = @ARGV[0] or die $!;
my %hash =();
my $csv = Text::CSV->new({sep_char=>','});

open(my $fh, '<', $file) or die "File could not be accessed $!";

while(my $line = <$fh>){
    chomp $line;

  if($csv->parse($line)){
 # using fields() method to extract the file;

   my @words = $csv->fields($line);

   for(my $i=0; $i<2; $i++){
       print "$words[$i] \n";
   }
  print "\n ";

 } else{
     print "line could not be parsed\n ";
 }

}





   
