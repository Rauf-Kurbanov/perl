#!/usr/bin/perl -w
#use strict;
binmode(STDOUT, ':utf8');
use Mojo::UserAgent;
use Mojo::JSON;
use Data::Dumper;

#access_token=13a07b2d6ec9fe0a49cf50916319e66b8eec0660acfa67533b200bc63f7e99aedaf4d75812f9884b5ef34&expires_in=0&user_id=40621568

$\ = $/;
$, = " ";

my $ua = Mojo::UserAgent->new;
#my $json = 
my $vk = "https://api.vk.com/method/";
my $at = "&access_token=13a07b2d6ec9fe0a49cf50916319e66b8eec0660acfa67533b200bc63f7e99aedaf4d75812f9884b5ef34&expires_in=0&user_id=40621568";

sub callVK
{
	my $call = shift;
	return $ua->get($vk.$call.$at);
	
}
my $json = Mojo::JSON->new;
my $res = callVK("photos.getAll?owner_id=40621568&count=10");
#print $res->res->body;
my $photos = $json->decode($res->res->body);

#print Dumper($photos);
my @photos = @{$photos->{response}};

shift @photos;

for $p (@photos)
{
	system("wget " . $p->{src_small});
}
#Hack lu 22-24 окт. с 13.00
