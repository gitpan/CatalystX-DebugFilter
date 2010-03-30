
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t t/author/*.t'
                                 },
                       'NAME' => 'CatalystX::DebugFilter',
                       'DISTNAME' => 'CatalystX-DebugFilter',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Brian Phillips <bphillips@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::Pod::Coverage' => '1.04',
                                             'FindBin' => '0',
                                             'Catalyst::Log' => '0',
                                             'Test::Pod' => '1.14',
                                             'ok' => '0',
                                             'Test::More' => '0',
                                             'Catalyst::ScriptRunner' => '0',
                                             'Catalyst::Controller' => '0',
                                             'Catalyst' => '0',
                                             'Test::WWW::Mechanize::Catalyst' => '0',
                                             'Catalyst::Test' => '0',
                                             'Moose' => '0'
                                           },
                       'ABSTRACT' => 'Provides configurable filtering of data that is logged to the debug logs (and error screen)',
                       'EXE_FILES' => [],
                       'VERSION' => '0.02',
                       'PREREQ_PM' => {
                                        'Moose::Role' => '0',
                                        'namespace::autoclean' => '0',
                                        'Clone' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



