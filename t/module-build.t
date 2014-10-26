#!perl
#
# $Id: module-build.t 67 2009-01-13 00:28:00Z jaldhar $
#
use warnings;
use strict;
use English qw( -no_match_vars );
use File::Find qw();
use File::Path qw( rmtree );
use Test::More;
use lib './t';
use common;

qx{ $cgiapp_starter --mb };

push @expected_files, 'Foo/Build.PL';

run_tests();

END {
    if ( -d $root ) {
        rmtree $root || die "$OS_ERROR\n";
    }
}
