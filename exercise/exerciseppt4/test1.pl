#! /bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

#Read data from 'banktran.csv'. Calculate and display total balance in each account.
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

 #print "$fields[0]\n";

# To represent in multidimensional hash
# my %account = {
#          'account_num' => {
#              cr=>value;
#              dr=>value;
#          },
#           'account_num' => {
#              cr=>value;
#              dr=>value;
#          }, 
#         'account_num' => {
#              cr=>value;
#              dr=>value;
#          },
# }

#print $account{account}{“Web”}; # will output “Developer”
if($fields[3] eq 'Dr'){
  $account{$fields[2]}{'Dr'} = $account{$fields[2]}{'Dr'} + $fields[4];
} else {
  $account{$fields[2]}{'Cr'} = $account{$fields[2]}{'Cr'} + $fields[4];
}

}
#Use dumper to check the created hash
#print Dumper \%account;

#To calculate the balance in the accounts;
foreach my $key(keys %account){
    print "Account Number : $key \n";
    my $balance = $account{$key}{'Dr'} - $account{$key}{'Cr'};
    print "Deposite: $account{$key}{'Dr'}\n";
    print "Credit: $account{$key}{'Cr'}\n";
    print "Total Balance is $balance \n";
    print "\n";
}
close(FH) or die(" Not closing! \n");