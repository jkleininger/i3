#!/usr/bin/perl

use JSON qw( decode_json );
use strict;
use warnings;
use Data::Dumper;

my($theJSON,$theDecodedJSON);

my $thecmd;

$thecmd = "i3-msg -t get_workspaces";

#capture { system($thecmd) } \$stdout. \$stderr;
#print $stdout;

$theJSON = qx($thecmd);
print $theJSON;
$theDecodedJSON = decode_json( $theJSON );
print Dumper $theDecodedJSON;


