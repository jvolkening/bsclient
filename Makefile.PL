use 5.012;

use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'bsclient',
    AUTHOR           => q{Jeremy Volkening <jdv*at*base2bio*dot*com>},
    VERSION_FROM     => 'bsclient',
    ABSTRACT_FROM    => 'bsclient',
    LICENSE          => 'GPL_3',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.012,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        # core
        'charnames' => 0,
        'Data::Dumper' => 0,
        'Digest::SHA' => 0,
        'Getopt::Long' => 0,
        'List::Util' => 0,
        'Pod::Usage' => 0,
        'Term::ReadLine' => 0,
        'Text::ParseWords' => 0,

        # non-core
        'Crypt::Blowfish' => 0,
        'Crypt::CBC' => 0,
        'File::HomeDir' => 0,
        'HTTP::Tiny' => 0,
        'JSON' => 0,
        'List::MoreUtils' => 0,
        'Term::ReadKey' => 0,
    },
    EXE_FILES => [qw|
        bsclient
    |],
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url => 'https://github.com/jvolkening/bsclient.git',
                web => 'https://github.com/jvolkening/bsclient',
            },
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'bsclient-*' },
);
