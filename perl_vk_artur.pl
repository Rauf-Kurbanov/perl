#!/usr/bin/perl -w
use Data::Dumper;
use Mojo::UserAgent;
=cut
https://oauth.vk.com/authorize? 
 client_id=3939288& 
 scope=friends,photos,groups,offline& 
 redirect_uri=https://oauth.vk.com/blank.html& 
 display=page& 
 v=5.2& 
 response_type=token 
=cut
# access_token=7a7b7f30a8e2c7c805272fbfe3ec0eabc5560c23f91ae1f87f29bfd215e8a7b3d05ca7394c09abcc80769
my $ua = Mojo::UserAgent->new;

$vk="https://api.vk.com/method/";
$at = "&access_token=7a7b7f30a8e2c7c805272fbfe3ec0eabc5560c23f91ae1f87f29bfd215e8a7b3d05ca7394c09abcc80769";
sub callVK{
	my $call = shift @_;
	return $ua->get($vk.$call.$at);
}
my $json  = Mojo::JSON->new;
$res = callVK("friends.get?user_id=447899");
$friends = $json->decode($res->res->body);
for $p(@{$friends->{response}}){
	print $p,$/;
	$res1 = callVK("photos.getAllComments?owner_id=$p&count=100");
	$comments = $json->decode($res1->res->body);
	for $cm(@{$comments->{response}}){
		print $cm->{message},$/;
	}
}
