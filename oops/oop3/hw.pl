#! /usr/bin/perl

use strict;
use warnings;

sub studentName{
    return $self->{_name};
}
sub studentRank{
   my ( $self, $name ) = @_;  
    $self->{_name} = $name if defined($name);  
    return $self->{_name};  
}  