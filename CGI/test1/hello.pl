#!/usr/bin/perl

use strict;
use warnings;

use CGI;

my $cgi = CGI->new();
print $cgi ->header(-type => 'text/html');

print <<'END';
<!doctype html>
<html> HTML Goes Here </html>
END

