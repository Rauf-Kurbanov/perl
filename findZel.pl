#!/usr/bin/perl -w
use strict;
use 5.010;

while (<>) {
	chomp();
	if(/[иИ]лья/) {
		say;
	}
}
