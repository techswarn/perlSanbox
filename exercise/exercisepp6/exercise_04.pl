#! /bin/perl
#
use Text::CSV;
use Data::Dumper qw(Dumper);
use strict;
use warnings;
my $file = $ARGV[0] or die "File could not be found $!";

export($file);

sub export{

my $csv = Text::CSV->new({
        binary => 1, #
        auto_diag=>1, #Set this attribute to a number between 1 and 9 causes "error_diag" to be automatically called in void context upon errors.
        sep_char=>',', #separate character.
    });

#open the file
open(my $fh, '<', $file) or die "Could not open the file $!";
my %var=();
my @arr=();
while(my $line = <$fh>){
chomp $line;
if($csv->parse($line)){
    my @words = $csv->fields();
      for (my $i = 0; $i <= 2; $i++) 
      {
         # print "$words[$i] "
      #  %var = @words;       
        push(@arr, $words[$i]);
      }
      print "\n"; 
}else 
  {
      print "Line could not be parsed: $line\n";
  }

};
%var = @arr;
while(my ($key, $value) = each (%var)){
   $value = $var{$key};
   print "$key : $value \n";
}

}


Output:


TranID : Amount
E34 : 3000
E54 : 84236
E11 : 741
