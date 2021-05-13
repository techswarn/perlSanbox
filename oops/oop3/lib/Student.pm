#! /usr/bin/perl

package Student;

sub new{
    my $class = shift;
    my $self = {
        _name =>shift,
        _rank => shift,
    };
    #Print all values for clarification
    print "Student name is $self->{_name} \n";
    print "Student rank is $self->{_rank} \n";

    bless $self, $class;
    return $self;
}

sub studentRank {
    my ($self, $name) = @_;
    $self->{_name} = $name if defined($name);
    return $self->{_name};
}

sub studentName {
    my($self) =@_;
    return $self->{_name};
}
1;

