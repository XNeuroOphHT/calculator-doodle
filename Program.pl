print "Enter first number: ";
my $a = <STDIN>;
chomp($a);

print "Enter second number: ";
my $b = <STDIN>;
chomp($b);

print "Enter operator (+ - * /): ";
my $op = <STDIN>;
chomp($op);

if ($op eq "+") {
    print "Result: ", $a + $b, "\n";
} elsif ($op eq "-") {
    print "Result: ", $a - $b, "\n";
} elsif ($op eq "*") {
    print "Result: ", $a * $b, "\n";
} elsif ($op eq "/") {
    if ($b == 0) {
        print "Error: division by zero!\n";
    } else {
        print "Result: ", $a / $b, "\n";
    }
} else {
    print "Unknown operator\n";
}
