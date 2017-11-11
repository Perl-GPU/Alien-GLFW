use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm = Alien::Build::MM->new;

WriteMakefile($abmm->mm_args(
        ABSTRACT     => 'discover/use GLFW library',
        DISTNAME     => 'Alien-GLFW',
        NAME         => 'Alien::GLFW',
        VERSION_FROM => 'lib/Alien/GLFW.pm',
));

sub MY::postamble {
    $abmm->mm_postamble;
}

###    AUTHOR           => q{Chris Marshall <chm@cpan.org>},
###    ABSTRACT_FROM    => 'lib/Alien/GLFW.pm',
###    LICENSE          => 'artistic_2',
###    PL_FILES         => {},
###    MIN_PERL_VERSION => '5.006',
###    CONFIGURE_REQUIRES => {
###        'ExtUtils::MakeMaker' => '0',
###    },
###    BUILD_REQUIRES => {
###        'Test::More' => '0',
###    },
###    PREREQ_PM => {
###        #'ABC'              => '1.6',
###        #'Foo::Bar::Module' => '5.0401',
###    },
###    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
###    clean => { FILES => 'Alien-GLFW-*' },
