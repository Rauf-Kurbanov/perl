#!/usr/bin/perl -w

use Mojo::UserAgent;
use strict;

$\=$/;

my $ua = Mojo::UserAgent->new;
my $str = print $ua->get('http://images.yandex.ru/')->res->body;

print $str =~/(<img .*?>)/;
