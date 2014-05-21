#!/usr/bin/env perl

use strict;
use warnings;

my $file = 'lab1.fq';

# make sure the file exists
open my $info, $file or die "Could not open $file: $!";

# this basically means while we can still read a line from it
while( my $firstline = <$info>)  {   
	my $secondline = <$info>;
	my $thirdine   = <$info>;
	my $fourthline = <$info>;
	print 'Seq name: ' . $firstline;
	print 'Seq read: ' . $secondline;
	print 'Seq qual: ' . $fourthline;

	# Now we want to go through the quality line and print each read quality
	for (my $basei = 0; $basei < length($secondline); $basei++) {
		my $read = substr( $secondline, $basei , 1 );
		my $qual = substr( $fourthline, $basei , 1 );
		print 'Read: ' . $read . ' Qual: ' . $qual . '     ' ;
	}

	# Run this script -  what's the problem here?
}

close $info;

