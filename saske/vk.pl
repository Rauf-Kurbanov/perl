#!/usr/bin/perl -w
package vk_base;

use Exporter;
use DBI;

@ISA = qw(Exporter);
@EXPORT = qw ();
@EXPORT_OK = qw (add_user);

sub new {
	my $self = {};
	my($name) = shift;
	my $db = DBI->connect("dbi:SQLite:dbname=$name.db","","");
	$db->do("create table if not exists users (usr text);");
	$db->disconnect;
	$self->{"dbname"} = $name;
	return bless ($self);
}

sub get_dbname {
	my ($self) = @_;
	return $self->{"dbname"};
}

sub add_user {
	my ($self,$user) = @_;
	my $db = DBI->connect("dbi:SQLite:dbname=".$self->{dbname},".db","","");
	print $db->do("insert into users values ('$user') ;");
	$db->disconnect;
	#open w, ">users" or die $!;
	##print w user;
	##close w;
	#}
	#
	#sub ls_user {
	#my ($self) = @_;
	#my $db = DBI->connect("dbi:SQLite:dbname=".$self->{dbname},".db","","");
	#my @usr = $db->do("select * from users; ");
	#$db->disconnct;
	#return @usr;
	#}
	#
	#1;
	##print join "\n", keys %{"vk_base::"};
	#
