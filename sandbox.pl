#!/usr/bin/perl -w
use strict;

open FL,  '<', 'files/test'
	or die "Cannot open file";

for my $x (FL) {
	print $x;
}
