#! /bin/perl


use Text::CSV;
use Data::Dumper qw(Dumper);
use strict;
use warnings;

my $file = $ARGV[0];

   my $csv = Text::CSV->new({
        binary => 1, #
        auto_diag=>1, #Set this attribute to a number between 1 and 9 causes "error_diag" to be automatically called in void context upon errors.
        sep_char=>',', #separate character.
    });


# Reading the file

open(my $fh , '<', $file) or die "Could not open '$file' $!\n";

my $header = $csv->getline($fh);
$csv->column_names($header);

while (my $line = $csv->getline_hr($fh)){
    print(Dumper $line)
}
close $fh;