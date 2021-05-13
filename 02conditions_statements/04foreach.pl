use strict;
use warnings;

my @arr=(1,2,3,4,5,6,7,8,9,10);
my $num = 10;
foreach my $value(@arr){
 #   print "$value * $num \n";
}

#my %hash=('Tom' => 23, 'Sam' => 36, 'joe' => 12);

#foreach my $key (key %hash){
 #   print "$key \n";
#}


my %hash = (
    'MyVehicle' => 'Car',
    'Model' => '1234',
    'Speed' => '60.7',

    'Traffic' => {
        'Red' => 'Stop',
        'Green' => 'go',
        'Yellow' => 'Look and more'
    }

    #Value type array
    'AllVehicle' => ['car', 'Cycle', 'bus', 'Auto']

);

foreach  my $key (keys %hash){
# do stuff
$value = $hash{$key};
print "Value of $key is $value\n"
}


