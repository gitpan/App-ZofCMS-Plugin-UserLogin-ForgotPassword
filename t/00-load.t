use Test::More tests => 6;

BEGIN {
	use_ok( 'App::ZofCMS::Plugin::UserLogin::ForgotPassword' );
    use_ok('App::ZofCMS::Plugin::Base');
    use_ok('DBI');
    use_ok('Digest::MD5');
    use_ok('HTML::Template');
    use_ok('MIME::Lite');   
}

diag( "Testing App::ZofCMS::Plugin::UserLogin::ForgotPassword $App::ZofCMS::Plugin::UserLogin::ForgotPassword::VERSION, Perl $], $^X" );
