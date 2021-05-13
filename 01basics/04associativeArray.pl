# /usr/bin/perl

use strict;
use warnings;

#print my %hash=('swarn'=>27,'suraj'=>36,'jeo'=>63);   #This is how hashs are created
#print my %hash=('swarn',23,'suraj',65,'sam','96'); #This way be asigning is called listing

#print $hash{'swarn'};

my %hash = ('John' => 27);

print %hash;

#Add hashs

my $newhash= ('Swarn' => 28);
my $newhash= ('Suraj' => 27);
my $newhash= ('john' => 36);

print %newhash;

#declaring hashs

my %report= {
    'Jan'=> 5000,
    'Feb'=> 6000,
    'Mar'=>60000,
    'April'=>4000
};

my $report =  

# Add new values

$report{'June'} = 54226;
$report{'Sep'} = 45236;

# Copy values to hashs
my $dup_report = %report;

#Values used in hashs

#funtion to give list of current keys in an hash

keys %report; #gives list 'jan', 'feb' ..

#Function for hash

values %report # Gives list of values

# each: Gives list of key-value pair as a two element list from the hash

while( my($k,$v) = each (%eport)){
    print "$k-$v \n";
}


#delete: Delete key - values pair from the hash

delete $report{'feb'};



#while loop to loop through has
my %report = (
    'jan' => 300,
    'feb' => 200,
    'mar' => 600
);

while(my ($key, $value) = each (%report)){
   $value = $report{$key};
   print "value of $key is $value";
}

#imput and display value from an hash
my %hash = ();

while(1){
    print "enter the hash key (Nothing to end): \n";
    my $key = <STDIN>;
    chomp $key;
    last if($key eq '');

    print "Enter hash value matched with key: \n";
    my $val = <STDIN>;
    chomp $val;
    $hash{$key} = $val;

}

while(my ($key, $value) = each (%hash)){
   $value = $hash{$key};
   print "value of $key is $value \n";
}







