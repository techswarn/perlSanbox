#! /usr/bin/perl
use File::Find;
use Data::Dumper;
use warnings;
use strict;


#loops through directories and search for strings.
my @files;
my $dir = './';

find(\&do_something, $dir);

sub do_something{
#  print "$file if -d $file \n";
    if ($File::Find::name =~ /\.(txt||html||xmp||xsl)$/ ){
        #print "$File::Find::name \n";
        push @files,$File::Find::name;
    }
}

sub checkPhoneNumbers {   
  #get the array
  my $num; 
  my %list =();
  #Loop through files and open the files
  for(my $i=0; $i<=$#files; $i++){
  
    open(my $fh, '<', $_[$i]) or die $!;
    #print("File $_[$i] was openned successfully \n");
        while(my $line = <$fh> ){
         my @phoneNumber = $line =~ /\d{1}-\d{3}-\d{3}-\d{4}\b/g;                     
           if(@phoneNumber)
               {    
                 #print "Phone Number: @phoneNumber \n";
                    my $phoneNumber = "@phoneNumber"; #Coverting array to scallar context
                    if($phoneNumber eq '877-472-4394' 
                       || $phoneNumber eq '800-403-3568' 
                       || $phoneNumber eq '888-511-4678' 
                       || $phoneNumber eq '1-888-278-9780' 
                       || $phoneNumber eq '866-317-4678'){                   
                    #print("File : $_[$i]\n");
                    #print "Phone Number: @phoneNumber \n";   
                    $list{$_[$i]} =  $phoneNumber;                           
                    }                                
               }            
        } 
    close($fh);    
  }
  return %list;
}

my %result = checkPhoneNumbers(@files);

print Dumper \%result;

#   #loop through array and check if file was openned successfully
# open(FH, '<', $filename) or die $!;
# print("File $filename was openned successfully \n");
# close(FH);

# my @files;
# my @dirpath='./folders/';
# find(sub {
#       push @files,$File::Find::name if (-f $File::Find::name and /\.(txt|xml)$/);
#     }, @dirpath);

# print join "\n",@files;
#/\b\d{3}-\d{3}-\d{4}\b/g