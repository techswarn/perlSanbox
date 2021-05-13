my @a = ("Orange", "Apple", "banana", "Watermelon");

sub mylist {
    my @list = @_;
    print "Here is the list @list\n";
}

mylist(@a);