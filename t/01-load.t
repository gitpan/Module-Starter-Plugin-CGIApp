#!perl -T
#
# $Id: 01-load.t 1 2008-03-23 13:38:20Z jaldhar $
#
use warnings;
use strict;
use Test::More tests => 1;

BEGIN {
    use_ok('Module::Starter::Plugin::CGIApp');
}

diag(
    "Testing Module::Starter::Plugin::CGIApp $Module::Starter::Plugin::CGIApp::VERSION, Perl $], $^X"
);
