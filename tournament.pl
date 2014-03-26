#!/usr/bin/perl -w
use strict;
use 5.010;
use List::Util qw(shuffle);

$\ = $/;
$, = "";

chomp(my @members = <>);

@members = shuffle @members;
my $len = $#members;
say "Group N1:";
for (0 .. $len / 2)
{
	say $members[$_];
}
print "\n";

say "Group N2:";
for ($len / 2 + 1 .. $len)
{
	say  $members[$_];
}
