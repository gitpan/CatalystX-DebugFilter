
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Catalyst' => '0',
    'Catalyst::Controller' => '0',
    'Catalyst::Log' => '0',
    'Catalyst::ScriptRunner' => '0',
    'Catalyst::Test' => '0',
    'FindBin' => '0',
    'Module::Build' => '0.3601',
    'Moose' => '0',
    'Test::More' => '0',
    'Test::Pod' => '1.14',
    'Test::Pod::Coverage' => '1.04',
    'Test::WWW::Mechanize::Catalyst' => '0',
    'ok' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Provides configurable filtering of data that is logged to the debug logs (and error screen)',
  'dist_author' => [
    'Brian Phillips <bphillips@cpan.org>'
  ],
  'dist_name' => 'CatalystX-DebugFilter',
  'dist_version' => '0.05',
  'license' => 'perl',
  'module_name' => 'CatalystX::DebugFilter',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Clone::Fast' => '0',
    'Moose::Role' => '0',
    'namespace::autoclean' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
