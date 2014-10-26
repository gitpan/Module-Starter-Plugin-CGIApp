#!perl -T
#
# $Id$
#
use strict;
use warnings;
use Test::More tests => 1;
use Test::WWW::Mechanize::CGIApp;

my $mech = Test::WWW::Mechanize::CGIApp->new;

$mech->app('<tmpl_var main_module>');

$mech->get_ok();

