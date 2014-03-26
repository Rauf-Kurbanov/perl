#!/usr/bin/perl -w
use 5.010;
use strict;

my @array = qw|vasya asas testtest|;
my $format = "Does is reaiily works?\n" . ("%10s\n" x @array); 

printf $format, @array;
