package Student;



#subroutine to construct the object
sub new{
  my $class= shift;
  my $self = {
      'studentFirstName' => shift,
      'studentLastName' => shift
  };

  bless $self, $class;
  return $self;

};
#use Student;

my $Data = Student->new("Swarn", "Sucarna");

print "$Data->{'studentFirstName'} \n";
print "$Data->{'studentLastName'} \n";
