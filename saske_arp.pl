#!/usr/bin/perl
use List::MoreUtil;

@time1 = localtime(time);
$s = `arp -a`;
@arp_cache_old = split /^/m, $s;

sub is_new_record {
    $s = `arp -a`;
    my @arp_cache_new = split /^/m, $s;
    @result = (); 
    foreach $a (@arp_cache_new) {
        if all { $a != $_ } @arp_cache_old {
            push(@result, $a);
        }
        @time1 = localime(time);
        return @result; 
    }
}

sub is_new_record_gone {
    my $flag = 1;
    while ($flag) {
        $s = `arp -a`;
        my @apr_cache_current = split /^/m, $s;
        foreach $a (@result) {
            print "$a \n" if all { $a != $_} @apr_cache_current;
            $flag = 0;
        } 
    }
}  

is_new_record;
print "\nEntry time is $time1[2]:$time1[1]:$time1[0]\n\n";
is_new_record_gone;
print "Current time is $time2[2]:$time2[1]:$time2[0]\n";
