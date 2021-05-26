#!/usr/bin/perl

use strict;
use warnings;
use DBI;


#Connect to database Connect() function
my $dbh = DBI->connect("$data_source,$username, $password");
$data_source format is dbi::DriverName:dbname
my $dbh = DBI->connect("DBI:mysql:dbname", 'root', 'password'); 

#Prepare statement
prepare();

my $tran_cur= $dbh->prepare("SELECT * FROM banktran");

#Execute statment
execute();
Executes the data stored through prepare function 
example: execute($tran_cur);







die "Failed to connect to database :DBI->errstr()" unless($dbh);

my $sth = $dbh -> prepare("SELECT lastname, firstname, extension FROM employees") or die "Prepare statement failed: $dbh->errstr()";

$sth->execute() or die "execution failed $dbh->errstr();";

my($lname, $fname, $ext);

while(($lname, $fname, $ext) => ($sth->fetchrow())){
    print("$lname, $fname\t$ext\n");
}

$sth->finish();
$dbh->disconnect();


