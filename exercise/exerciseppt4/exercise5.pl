#!/usr/bin/perl
use strict;
#use warnings;
 
use Text::CSV;
use Data::Dumper qw(Dumper);
 
my $file = $ARGV[0]
    or die "Need to get CSV file on the command line\n";
 
open(my $fh, '<:encoding(utf8)', $file) || die "File could not be openned $!";
my %accounts;
 my $csv = Text::CSV->new ({
        binary    => 1,
        auto_diag => 1,
        sep_char  => ',' # not really needed as this is the default
    });
 
   while(my $row = <$fh>){
      chomp $row;
      
      if($csv ->parse($row)){
           my @field = $csv->fields();
           next if($field[0] eq 'TranID');
           
           
           $accounts{$field[2]}{TranID} = $field[0];
           $accounts{$field[2]}{Date} = $field[1];
           $accounts{$field[2]}{AccountNumber} = $field[2];
           $accounts{$field[2]}{Type} = $field[3];
           $accounts{$field[2]}{Amount} = $field[4];
           $accounts{$field[2]}{CheckNo} = $field[5];
           $accounts{$field[2]}{DDno} = $field[6];
           $accounts{$field[2]}{Bank} = $field[7];
           $accounts{$field[2]}{Branch} = $field[8];
           
         print Dumper \%accounts;         
      }    
   }
 print Dumper \%accounts;      
  

close($fh) || die "File closed";

