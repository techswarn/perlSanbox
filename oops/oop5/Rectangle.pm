package Rectangle;

sub new {
    my ($class, $width, $length) =@_;
    my $self={
        w=>$width, l=>$length
    };
    bless($self, $class);
    return $self;
}

sub getArea {
    my $self = shift;
    return $self ->{w} * $self->{l};
};

sub getBoundry {
    my $self = shift;
    return 2*($self->{w}+$self->{l});
}
1;