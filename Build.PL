
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Make your html more iPhone friendly',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {},
                       'dist_name' => 'Plack-Middleware-iPhone',
                       'dist_author' => [
                                          'Patrick Donelan <pat@patspam.com>'
                                        ],
                       'module_name' => 'Plack::Middleware::iPhone',
                       'requires' => {
                                       'parent' => '0',
                                       'HTML::Tidy' => '0',
                                       'Plack::Util::Accessor' => '0',
                                       'HTTP::Request::Common' => '0',
                                       'Test::More' => '0',
                                       'Plack::Middleware' => '0',
                                       'Plack::Test' => '0',
                                       'File::Find' => '0',
                                       'File::Temp' => '0',
                                       'Digest::MD5' => '0',
                                       'Plack::Builder' => '0',
                                       'HTML::DOM' => '0',
                                       'File::Slurp' => '0'
                                     },
                       'configure_requires' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'dist_version' => '1.100830'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
