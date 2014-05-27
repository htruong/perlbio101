#!/usr/bin/env perl

# Here $name is a variable
my $name;

print "Enter ur name pls: ";

# Now assigns $name to whatever the user will enter
$name = <>;
# Cuts off the trailing newline character from name
chomp($name);

# Magic to convert the lowercase to uppercase
# name[0] is the first character in the string
# look at http://www.asciitable.com/

# Think of it this way: If I were to enter jimmy
# then substr($name, 0, 1) is the letter j
# then ord('j') - 32 = 106 - 32 = 74
# chr(74) = 'J' :)

substr($name, 0, 1) = chr(ord(substr($name, 0, 1)) - 32);

# Print out the personalized greetings
print "Howdy, " . $name . "!\n";
