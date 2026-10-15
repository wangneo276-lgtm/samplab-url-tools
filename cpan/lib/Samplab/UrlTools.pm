package Samplab::UrlTools;
use strict;
use warnings;
our $VERSION = '0.1.1';
my $BASE = 'https://samplab.pro';
my %PAGES = (
        'features' => '/features/',
        'pricing' => '/pricing/',
        'faq' => '/faq/',
        'about' => '/about/',
);

sub home_url { return $BASE . '/'; }

sub page_url {
    my ($name) = @_;
    die "unknown page: $name" unless exists $PAGES{$name // ''};
    return $BASE . $PAGES{$name};
}

sub tool_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('audio-to-midi', 'bpm-key-finder', 'chord-recognition', 'frequency-band-splitter', 'midi-to-audio', 'lead-sheet-generator');
    die "unknown tool_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/' . $slug . '/';
}
1;
