use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ZofCMS::Plugin::UserLogin::ForgotPassword',
    license             => 'perl',
    dist_author         => q|Zoffix Znet <cpan@zoffix.com>|,
    dist_version_from   => 'lib/App/ZofCMS/Plugin/UserLogin/ForgotPassword.pm',
    build_requires => {
        'Test::More' => 0,
    },
    build_recommends => {
        'App::ZofCMS::Test::Plugin' => '0.0104',
    },
    requires => {
        'App::ZofCMS::Plugin::Base' => 0.0105,
        'DBI'                       => 1.607,
        'Digest::MD5'               => 2.36_01,
        'HTML::Template'            => 2.9,
        'MIME::Lite'                => 3.027,
    },
    add_to_cleanup      => [ 'App-ZofCMS-Plugin-UserLogin-ForgotPassword-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
