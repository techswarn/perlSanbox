#! /bin/perl
#Read data into a hash from banktran.csv (Session 4). 
#Pass it to a function. Delete all the keys which is relating to a check / DD transaction. Dump the hash on the screen.
use strict;
use warnings;
use Text::CSV;
use Data::Dumper qw(Dumper);

my $file = $ARGV[0] or die $!;
readfile_hash($file);

sub readfile_hash{

my $csv = Text::CSV->new(
        binary => 1, #
        auto_diag=>1, #Set this attribute to a number between 1 and 9 causes "error_diag" to be automatically called in void context upon errors.
        sep_char=>',', #separate character.
)



open(my $fh, '<:encoding(utf8)', $file) or die "The file cound not be openned $!";
 
 my $header = $csv->getline($fh);
 $csv->column_names($header);

while(my $row=$csv->getline_hr($fh)){
        print(Dumper $row)
}close $fh;

}









