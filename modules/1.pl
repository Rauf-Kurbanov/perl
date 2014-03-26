#!/usr/bin/perl -w

package VK_DATABASE;

sub add_user {
	my ($user) = shift;
	open w, ">users" or die $1;
}

$db_name = "VK_BASE";
@tables = qw |user status|;

1;

#use Dumper. man
