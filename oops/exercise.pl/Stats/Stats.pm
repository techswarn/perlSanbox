package Stats;

sub new{
    my ($class, $english, $kannada, $maths, $science) = @_;
    my $self={
      _english => $english,
      _kannada => $kannada,
      _maths => $maths,
      _science => $science
    };
    bless ($self, $class);
    return $self;
}
        
sub total{
    my $self = shift;
    return $self->{_english}+$self->{_kannada}+$self->{_maths}+$self->{_science};
};

sub average{
     my $self = shift;
     return (($self->{_english}+$self->{_kannada}+$self->{_maths}+$self->{_science}) / 4);
}

sub maxNum{
    my $self = shift;
    my @arr=($self->{_english}, $self->{_kannada}, $self->{_maths}, $self->{_science});
    my $highest=$arr[0];
    
    foreach my $number (@arr) {
     if ($number > $highest) {
     $highest = $number;
    }
    }

    return $highest;
}
    
sub minNum{
    my $self = shift;
    my @arr=($self->{_english}, $self->{_kannada}, $self->{_maths}, $self->{_science});
    my $lowest=$arr[0];
    
    foreach my $number (@arr) {
     if ($number < $lowest) {
     $lowest = $number;
    }
    }

    return $lowest;
}


1;

