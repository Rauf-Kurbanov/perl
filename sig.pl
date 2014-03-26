use bignum;

$a = 15;
$SIG{INT} = sub {
	print $a;
	exit;
}

while (1) {
	$a = $a * $a;
}
print $a;
