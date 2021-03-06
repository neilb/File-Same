use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'File::Same',
    'VERSION_FROM'	=> 'Same.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'Same.pm', # retrieve abstract from module
       AUTHOR     => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>}) : ()),
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/File-Same.git',
                web  => 'https://github.com/manwar/File-Same',
            },
        }})
     : ()
    ),
);
