#Print multiplication table of input number.
#! /bin/perl


print "Numbers printed from 1 to 10 \n";
my $num = <STDIN>;
chomp $num;
my $mul;

for(my $i=1; $i<=10; $i++){
   $mul = $num * $i;
    print "$mul \n";
}
