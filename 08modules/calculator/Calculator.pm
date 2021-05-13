package Calculator;

#Defining perl subroutine for multiplication
sub multiplication{
    my $a = $_[0];
    my $b = $_[1];

    $a = $a * $b;

    print "\n***multiplication is $a";

}

sub devision{
    my $a = $_[0];
    my $b = $_[1];

    $a = $a / $b;

    print "\n***Devision is $a";
}
1;