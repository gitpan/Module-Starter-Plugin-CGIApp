#!/usr/bin/perl

# Test to see if the module loads correctly.
use warnings;
use strict;
use Test::More tests => 1;

BEGIN {
    use_ok('Foo');
}

diag(
    "Testing Foo $Foo::VERSION, Perl $], $^X"
);
