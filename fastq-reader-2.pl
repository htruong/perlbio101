#!/usr/bin/env perl

use strict;
use warnings;

my $file = 'lab1.fq';

# make sure the file exists
open my $info, $file or die "Could not open $file: $!";

# this basically means while we can still read a line from it
while( my $firstline = <$info>)  {   
	my $secondline = <$info>;
	print 'Seq name: ' . $firstline;
	print 'Seq data: ' . $secondline;
	# now modify it so the script reads four lines at once
}

close $info;

