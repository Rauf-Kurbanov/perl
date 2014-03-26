#!/usr/bin/perl -w
use strict;
use Data::Dumper;

my %pref;

while (<>) {
	my @dictionary = split(/\p{Space}+/, $_);
	for my $word (@dictionary) {
		for (1..(length $word)) {
			my $pr = substr($word, 0, length($word) - $_);
			my $su = substr($word, $_);  
			my $prEl = \ ${$pref{length $pr}}{$pr};
			
			if (defined($prEl) && $prEl <= 0) {
				&$prEl = 0 
			} else {
				&$prEl = 1;
			}
				
			my $suEl = \ ${$pref{length $su}}{$su};
			if (defined($suEl) && $suEl >= 0) {
				&$suEl = 0
			} else {
			   &$suEl = -1;
		   }	   
		}
	}
}
print Dumper(\%pref);;

__END__
for my $len (reverse sort keys %pref) {
	my %res = %{$pref{$len}};
	for my $key (keys %res) {
		#if ($res{$key} == 0) {
			print "$key => $res{$key}\n";
		#	exit;
		#}
	}
}
__END__
}

__END__
for my $lng (reverse sort keys %pref) {
	for my $prf (@{$pref{$lng}}) {
		for my $suf (@{$suff{$lng}}) {
			if ($suf eq $prf) {
				print "$prf\n";
				exit;
			}
		}
	}
}
__END__

#Написать программу, которая находит в словаре наибольший префик равынй суффиксу
#Прочитать в документации Mojo, как писать сайтики на перле
#И ещё разберем template'ы
#hash main %:: можешь посмотреть по фану
