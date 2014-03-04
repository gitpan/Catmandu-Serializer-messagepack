use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    module_name => 'Catmandu::Serializer::messagepack',
    license => 'perl',
    dist_author => [
        'Nicolas Steenlant <nicolas.steenlant@ugent.be>',
    ],
    build_requires => {
        'Test::Exception' => 0,
        'Test::More' => 0,
    },
    requires => {
        'perl' => '5.10.1',
        'Catmandu' => '0.8006',
        'Data::MessagePack' => '0.39',
        'MIME::Base64' => 0,
    },
    add_to_cleanup => [qw(
        Catmandu-Serializer-messagepack*
    )],
    create_makefile_pl => 'traditional',
    meta_merge => {
         resources => {
              repository => 'https://github.com/LibreCat/Catmandu-Serializer-messagepack.git',
              bugtracker => 'https://github.com/LibreCat/Catmandu-Serializer-messagepack/issues',
              homepage => 'https://github.com/LibreCat/Catmandu-Serializer-messagepack',
        },
    },
);

$build->create_build_script;
