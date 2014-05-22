#!/usr/bin/env perl

use strict;
use warnings;

my $file1 = 'list1.txt';
my $file2 = 'list2.txt';

# Open the file named below and give it the handler $info
open my $info1, $file1 or die "Could not open $file1: $!";
open my $info2, $file2 or die "Could not open $file2: $!";

# look back on the fastq-reader-1 to see
# how you would go about reading all the lines of file1 and file2

# insert code here


close $info1;
close $info2;

