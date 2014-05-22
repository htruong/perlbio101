#!/usr/bin/env perl

# Here $name is a variable
my $name;

print "Enter ur name pls: ";

# Now assigns $name to whatever the user will enter
$name = <>;
# Cuts off the trailing newline character from name
chomp($name);

# Print out the personalized greetings
if ($name != "Huan" && $name != "Gavin") {
	print "Howdy, " . $name . "!\n";
} else {
	print "Howdy, glorious " . $name . "!\n";
}
