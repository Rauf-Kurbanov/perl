#!/usr/bin/perl -w
use strict;

$_ = <>;
m#(\(($&)\)|(^(\(|\))))# ? 1:0
