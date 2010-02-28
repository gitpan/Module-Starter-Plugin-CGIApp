use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Foo',
    license             => 'perl',
    dist_author         => 'Jaldhar H. Vyas <jaldhar@braincells.com>',
    dist_version_from   => 'lib/Foo.pm',
    tmpl_files          => eval {
        my %tmpls; File::Find::find(
            {
                wanted => sub {
                    if ( -f $_ ) {
                        $tmpls{$File::Find::name} = $File::Find::name;
                    }
                },
            },
            'lib/Foo/templates',
        );
        return \%tmpls;
    },
    build_requires => {
        'CGI::Application'              => 4.04,
        'File::Find'                    => 0,      
        'HTML::Template'                => 0,
        'Pod::Coverage'                 => 0.18,
        'Pod::Usage'                    => 0,
        'Test::More'                    => 0,
        'Test::Pod'                     => 1.22,
        'Test::Pod::Coverage'           => 1.08,
        'Test::WWW::Mechanize::CGIApp'  => 0,
    },
    requires => {
        'CGI::Application'              => 4.04,
        'File::Find'                    => 0,      
        'HTML::Template'                => 0,
    },
    add_to_cleanup      => [ 'Foo-*' ],
    create_makefile_pl  => 'traditional',
    sign                => 1,
);

$builder->add_build_element('tmpl');
$builder->create_build_script();
