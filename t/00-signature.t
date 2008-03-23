#!perl
#
# $Id: /svn/Module-Starter-Plugin-CGIApp/trunk/t/00-signature.t 318 2008-03-23T13:59:14.070647Z jaldhar  $
#
use warnings;
use strict;
use Test::More tests => 1;

SKIP: {
    if ( !eval { require Module::Signature; 1 } ) {
        skip(
            'Next time around, consider install Module::Signature, '
                . 'so you can verify the integrity of this distribution.',
            1
        );
    }
    elsif ( !eval { require Socket; Socket::inet_aton('wwwkeys.pgp.net') } ) {
        skip( 'Cannot connect to the keyserver', 1 );
    }
    else {
        ok( Module::Signature::verify()
                == Module::Signature::SIGNATURE_OK() => 'Valid signature' );
    }
}
