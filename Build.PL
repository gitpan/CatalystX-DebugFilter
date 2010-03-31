
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Provides configurable filtering of data that is logged to the debug logs (and error screen)',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {
                                             'Test::Pod::Coverage' => '1.04',
                                             'FindBin' => '0',
                                             'Catalyst::Log' => '0',
                                             'Test::Pod' => '1.14',
                                             'ok' => '0',
                                             'Test::More' => '0',
                                             'Catalyst::ScriptRunner' => '0',
                                             'Catalyst::Controller' => '0',
                                             'Catalyst' => '0',
                                             'Module::Build' => '0.3601',
                                             'Test::WWW::Mechanize::Catalyst' => '0',
                                             'Catalyst::Test' => '0',
                                             'Moose' => '0'
                                           },
                       'dist_name' => 'CatalystX-DebugFilter',
                       'dist_author' => [
                                          'Brian Phillips <bphillips@cpan.org>'
                                        ],
                       'module_name' => 'CatalystX::DebugFilter',
                       'requires' => {
                                       'Moose::Role' => '0',
                                       'namespace::autoclean' => '0',
                                       'Clone' => '0'
                                     },
                       'configure_requires' => {
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '0.03'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
