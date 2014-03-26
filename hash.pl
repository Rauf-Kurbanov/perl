#!/usr/bin/perl -w
use strict;

my $longest = 0;
foreach (keys %ENV) {
	$longest = length($_) if length($_) > $longest;
}
foreach my $key (sort keys %ENV) {
	printf ("%-${longest}s   %s\n", $key, $ENV{$key});
}

