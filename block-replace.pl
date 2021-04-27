#!/usr/bin/perl
#
# Author:  Kent Oyer (https://kentoyer.com)
# Date:    April, 27, 2021
#
# License: GPL v3
#
use strict;

my $search=<<EOF;
                <li><a href="/admin/inactive">Inactive Accounts</a></li>
                <li><a href="/admin/search">Advanced Search</a></li>
                <li><a href="/admin/rules">Custom Rules</a></li>
EOF

my $replace=<<EOF;
                <li><a href="/admin/inactive">Inactive Accounts</a></li>
                <li><a href="/admin/search">Advanced Search</a></li>
                <li><a href="/admin/search-outbound">Outbound Search</a></li>
                <li><a href="/admin/rules">Custom Rules</a></li>
                <li><a href="/rules">All Rules</a></li>
                <li><a href="/admin/false-negatives">False Negatives</a></li>
                <li><a href="/admin/false-positives">False Positives</a></li>
EOF

foreach my $file (@ARGV) {
    open FILE,"<",$file or die $!;
    my $file_content = do { local $/; <FILE> };
    close FILE;
    if ( $file_content =~ s/$search/$replace/ ) {
        open FILE,">",$file or die $!;
        print FILE $file_content;
        close FILE;
        print "$file updated.\n";
    }
}


