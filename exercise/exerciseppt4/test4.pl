#! /bin/perl
#Calculate total amount deposited by cheque, dd and by cash for each account.
use strict;
#use warnings;
use Data::Dumper qw(Dumper);


my $filename = $ARGV[0] or die $!;
open(FH, '<', $filename) or die "File could not found $!";

#print "openned successfully \n";
my %account;
while(my $row = <FH>){
chomp $row;
 #print "$row \n";
my @fields = split(',', $row);
 #print "@fields \n";
next if($fields[0] eq 'TranID');
 #if(($fields[5] =~ /^[+-]?\d+\$/) && ($fields[3] eq 'Dr' ))

if(($fields[5] =~ /\d/) && ($fields[3] eq 'Dr' )){
     $account{$fields[2]}{'check'} = $account{$fields[2]}{'check'} + $fields[4];
     
} elsif(($fields[6] =~ /\d/) && ($fields[3] eq 'Dr' )){
     $account{$fields[2]}{'DD'} = $account{$fields[2]}{'DD'} + $fields[4];
} 
 elsif(($fields[5] =~ /^ *$/) && ($fields[5] =~ /^ *$/) &&($fields[3] eq 'Dr' )){
      $account{$fields[2]}{'Cash'} = $account{$fields[2]}{'Cash'} + $fields[4];
}

}
#print Dumper \%account;
foreach my $key(keys %account){
     print "Account Number : $key \n";
     print "Account deposited through cheque is : $account{$key}{'check'} \n";
     print "Account deposited through DD is : $account{$key}{'DD'} \n";
     print "Account deposited through cash is : $account{$key}{'Cash'} \n";
     print "\n";
}
close(FH) or die(" Not closing! \n");