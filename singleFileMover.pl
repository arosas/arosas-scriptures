#! /usr/bin/perl -w
use English qw' -no_match_vars ';
use strict;
use warnings;
# TODO make this script universal by  including a configuration file

#-----------------------------------------------
my $dest_path = "c:\\";

my $file = $ARGV[0]; 

#------------------------------------------------
print "\n--------------------------------------------------";
print "\n Moving $file to $dest_path\n";
print "--------------------------------------------------\n";

# operating system check
if( $OSNAME =~ /MSWin32/){
   
	WindowsCopier($file);
}
elsif ($OSNAME =~ /linux/){
	print "$OSNAME is something useful!\n";
}
else{
	die "\n$OSNAME is not a currently support Operating System!";
}

# simple DOS cmd that moves to it's destination
sub WindowsCopier{	
	system("move /-Y \"$file\" \"$dest_path$file\"");
}