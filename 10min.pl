#!/usr/bin/perl -w
use strict;

$a = <DATA>;
$a =~ s/(\d+)/unpack "H*", pack "N*", $1/eg;
print $a;

#почитай про pack и unpack
#print unpack "H*", pack "B*" "11101010101110011111";
#print unpack "B*", pack "N",0xfafafafa;
