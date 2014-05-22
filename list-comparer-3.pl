#!/usr/bin/env perl

use strict;
use warnings;

my $file1 = 'list1.txt';
my $file2 = 'list2.txt';


# Open the file named below and give it the handler $info
open my $info1, $file1 or die "Could not open $file1: $!";
open my $info2, $file2 or die "Could not open $file2: $!";

# Make an empty array... to record what we have seen
my @seen = ();

while( my $line = <$info1>)  {   
    # print 'Got a line: ' . $line;
    # somehow push the new element into the array
    push(@seen, $line);
}

while( my $line = <$info2>)  {   
    # print 'Got a line: ' . $line;
    # see if the thing is already there in the array
    if ( $line ~~ @seen ) {
    	print 'Seen: ' . $line;
    }
}


close $info1;
close $info2;

