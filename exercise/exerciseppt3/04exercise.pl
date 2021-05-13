#Input marks scored by an 8th standard student in different 
#subjects in a year. Display all the marks, with annual average marks.
my %studentMarks =();

while(1){
    print "Enter subject name(End the entry by blank input):   \n";
    my $key = <STDIN>;
    chomp $key;
    last if($key eq '');

    print "Enter marks: \n";
    my $value = <STDIN>;
    chomp $value;

    $studentMarks{$key} = $value;
}
 print "%studentMarks ";

    my $average = 0;
    my $total =0;

while(my($key, $value)= each(%studentMarks)){
    $value = $studentMarks{$key};
    print "Marks scored in $key is $value \n";


    #$total = $total + $value;

    #print "Total Marks is $total \n"
};

#Calculation of annual average marks
foreach my $value (values %studentMarks){
    $total = $total + $value;
    my $size=0;
    @keys = keys %studentMarks;
    $size = @keys;
    $average = $total/$size;
    
}

print "Total marks scored by the student is $total and the average marks is $average \n";


