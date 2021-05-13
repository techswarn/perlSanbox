#!/usr/bin/perl

use strict;
use warnings;
use DBI;

#Connect to database
my $dbh = DBI->connect("DBI:mysql:dbname", 'root', ''); 

die "Failed to connect to database :DBI->errstr()" unless($dbh);

my $sth = $dbh -> prepare("SELECT lastname, firstname, extension FROM employees") or die "Prepare statement failed: $dbh->errstr()";

$sth->execute() or die "execution failed $dbh->errstr();";

my($lname, $fname, $ext);

while(($lname, $fname, $ext) => ($sth->fetchrow())){
    print("$lname, $fname\t$ext\n");
}

$sth->finish();
$dbh->disconnect();


