use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'Samplab::UrlTools',
    VERSION_FROM => 'lib/Samplab/UrlTools.pm',
    ABSTRACT => 'Offline URL helpers for SampLab Pro',
    AUTHOR => 'bbwdadfg',
    LICENSE => 'mit',
    META_MERGE => { resources => { homepage => 'https://samplab.pro/', repository => 'https://github.com/wangneo276-lgtm/samplab-url-tools' } },
);
