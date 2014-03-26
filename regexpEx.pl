#!/usr/bin/perl -w
use 5.010;
use strict;

@ARGV = qw(regexpTest);
while (<>) {
	chomp();
    if (/(.)\1/) {
        say
    }
}
