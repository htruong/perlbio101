#!/usr/bin/env perl

use strict;
use warnings;

# You need to change it so it opens the file lab1.fq 

my $file = 'myfile.fq';

# Open the file named below and give it the handler $info
open my $info, $file or die "Could not open $file: $!";

# this basically means while we can still read a line from it
while( my $line = <$info>)  {   
    print 'Got a line: ' . $line;
}

close $info;

