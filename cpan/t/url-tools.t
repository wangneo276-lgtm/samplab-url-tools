use strict;
use warnings;
use Test::More tests => 2;
use lib 'lib';
use Samplab::UrlTools;
is(Samplab::UrlTools::home_url(), 'https://samplab.pro/', 'home');
is(Samplab::UrlTools::tool_url('audio-to-midi'), 'https://samplab.pro/audio-to-midi/', 'extra');
