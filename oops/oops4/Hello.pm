package Hello;

use strict;

sub new{

my $class = shift;
my $self = {

};
bless ($self, $class);
return $self; 
}

sub greet{
    my($self, $str) =@_;
    return $str;
}

sub greet2{
    return "hi \n";
}

1;