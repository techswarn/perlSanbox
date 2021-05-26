package Ht;
use Data::Dumper;




sub save{
   
        my $username;
        my $password;
        
        do{
        print "Please enter username: \n";
        chomp ($username = <STDIN>);    
        print "Please enter password: \n";  
        chomp ($password = <STDIN>);
        }until($username && $password );
        

        my %hash;

        $hash{$username} = $password;
        print Dumper \%hash;

        my $file = './file.txt';
        open(my $fh, '>>', $file) or die "Could not open the file $!";

        my $delimitor = ":";
        my ($k, $v);

        while(($k, $v) = each %hash) {
            print $fh join($delimitor, ($k, $v)), "\n";
        }
        print "User added \n";
        close $fh || die "File could not be closed $!";
}
1;


