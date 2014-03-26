#!/usr/bin/perl -w
use bignum;

sub inth {
	print $a;
	exit;
};

$a = 15;
$SIG{int} = /$inth;
while (1) {
	$a = $a * $a;
}
print $a;

#perlperf
