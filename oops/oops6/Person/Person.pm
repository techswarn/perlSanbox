package Person;

use strict;
use warnings;

sub new{
    my ($class, $name, $dob, $job) = @_;
    my $self={
        name => $name,
        dob => $dob,
        job => $job
    };
    bless($self, $class);
    return $self;
}

sub printDetails{
    my $self = shift;
    print "My name is $self->{name} and my job is $self->{job}";
}

sub calcAge{
    my $self = shift;
    my $age = 2021-$self->{dob};
}
1;