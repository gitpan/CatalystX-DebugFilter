
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t t/author/*.t'
                                 },
                       'NAME' => 'CatalystX::DebugFilter',
                       'DISTNAME' => 'CatalystX-DebugFilter',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Brian Phillips <bphillips@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Provides configurable filtering of data that is logged to the debug logs (and error screen)',
                       'EXE_FILES' => [],
                       'VERSION' => '0.01',
                       'PREREQ_PM' => {
                                        'namespace::autoclean' => '0',
                                        'Clone' => '0',
                                        'Catalyst::Runtime' => '5.80022',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



