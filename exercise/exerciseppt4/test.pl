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
#print "$fields[0] \n";

if ($fields[3] eq 'Cr')
{
$account{$fields[2]}{'Cr'}=$account{$fields[2]}{'Cr'}+$fields[4];
}
else
{
$account{$fields[2]}{'Dr'}=$account{$fields[2]}{'Dr'}+$fields[4];
}
}

foreach my $k(keys %account)
{
print "\nAccount Number: $k";
print ("\nTotal Deposited :", $account{$k}{'Cr'});
print ("\nTotal Credited :", $account{$k}{'Dr'});
}

close(FH) || die(" Not closing! \n");