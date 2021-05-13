#! /usr/bin/perl


package Shape;

sub new {
    my ($class, $args) = @_;
    my $self = {
        color  => $args->{color},
        length => $args->{length},
        width  => $args->{width}
    };
    return bless $self, $class;
}

1;