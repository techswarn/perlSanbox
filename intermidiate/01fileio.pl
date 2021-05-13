#! /usr/bin/perl

use warnings;
use strict;


#open a file
#open(FILEHANDLE, "file name or complete path to the file");


#Read – open(my $fh,"<filename or complete path of the file"); 
#Write – open(my $fh,">filename or complete path of the file");
#Append – open(my $fh,">>filename or complete path of the file");

Modes  Description

< Read

+< Reads and writes

> Creates, writes and truncates

+> Read, write, create and truncate

>> Writes, appends and creates

+>>  Read, write, appends and create