
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Plack::Middleware::iPhone',
                       'DISTNAME' => 'Plack-Middleware-iPhone',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Patrick Donelan <pat@patspam.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Make your html more iPhone friendly',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100830',
                       'PREREQ_PM' => {
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
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



