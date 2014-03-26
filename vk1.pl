#!/usr/bin/perl -w
use 5.010;
use strict;
use Mojo::UserAgent;
use Mojo::JSON;
binmode(STDOUT, ':utf8');

$\ = $/;
$, = " ";

my $json = Mojo::JSON->new;
my $ua = Mojo::UserAgent->new;
my $js = $json->decode($ua->get('http://api.vk.com/method/friends.get?uid=40621568&fields=uid,first_name')->res->body);

unless ($js)
{
	print "Cant decode JSON\n";
	exit;
}

#print %{$js};
for (@{${$js}{'response'}}){
    for my $x (keys %{$_})
    {
	    print $x . " = " . ${$_}{$x};
    }	
	print "\n";
}

#Получить access token
#Найти друзей с наибольшим и наименьшим количеством друзей
#Найти среднее количество друзей у моих друзей
#40621568
#690824&
