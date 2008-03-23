#!perl -T
#
# $Id: /svn/Module-Starter-Plugin-CGIApp/trunk/t/01-load.t 315 2008-03-23T13:38:20.082716Z jaldhar  $
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
