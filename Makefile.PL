
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Plack::Middleware::iPhone',
                       'DISTNAME' => 'Plack-Middleware-iPhone',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31',
                                                 'Module::Build' => '0.3601'
                                               },
                       'AUTHOR' => 'Patrick Donelan <pat@patspam.com>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'Plack::Test' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601',
                                             'Plack::Builder' => '0',
                                             'HTTP::Request::Common' => '0'
                                           },
                       'ABSTRACT' => 'Make your html more iPhone friendly',
                       'EXE_FILES' => [],
                       'VERSION' => '1.101110',
                       'PREREQ_PM' => {
                                        'Plack::Middleware' => '0',
                                        'parent' => '0',
                                        'Digest::MD5' => '0',
                                        'UNIVERSAL::require' => '0',
                                        'Plack::Util::Accessor' => '0',
                                        'File::Slurp' => '0',
                                        'HTML::DOM' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



