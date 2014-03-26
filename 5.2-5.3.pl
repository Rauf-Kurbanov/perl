#!/usr/bin/perl -w
use strict;
use 5.010;

say "Enter coloumn wight:";
chomp(my $wd = <STDIN>);

say "Enter list of strings on separate lines";
chomp(my @lines = <STDIN>);
say "1234567890" x 3;
my $format = "%${wd}s\n" x @lines;
printf $format, @lines;
