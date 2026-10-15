<?php

declare(strict_types=1);

require __DIR__ . '/../src/SamplabUrlTools/Urls.php';

use SamplabUrlTools\Urls;

function expect(bool $ok, string $message): void
{
    if (!$ok) {
        fwrite(STDERR, $message . PHP_EOL);
        exit(1);
    }
}

$meta = Urls::metadata();
expect($meta['name'] === 'SampLab Pro', 'brand');
expect($meta['homepage'] === 'https://samplab.pro/', 'homepage');
expect(!str_contains($meta['homepage'], ' '), 'space');
expect(Urls::pageUrl('features') === 'https://samplab.pro/features/', 'page features');
expect(Urls::pageUrl('pricing') === 'https://samplab.pro/pricing/', 'page pricing');
expect(Urls::pageUrl('faq') === 'https://samplab.pro/faq/', 'page faq');
expect(Urls::pageUrl('about') === 'https://samplab.pro/about/', 'page about');
try { Urls::pageUrl('not-a-page'); expect(false, 'unknown page should throw'); } catch (InvalidArgumentException $e) {}
expect(Urls::toolUrl('audio-to-midi') === 'https://samplab.pro/audio-to-midi/', 'toolUrl audio-to-midi');
expect(Urls::toolUrl('bpm-key-finder') === 'https://samplab.pro/bpm-key-finder/', 'toolUrl bpm-key-finder');
expect(Urls::toolUrl('chord-recognition') === 'https://samplab.pro/chord-recognition/', 'toolUrl chord-recognition');
expect(Urls::toolUrl('frequency-band-splitter') === 'https://samplab.pro/frequency-band-splitter/', 'toolUrl frequency-band-splitter');
expect(Urls::toolUrl('midi-to-audio') === 'https://samplab.pro/midi-to-audio/', 'toolUrl midi-to-audio');
expect(Urls::toolUrl('lead-sheet-generator') === 'https://samplab.pro/lead-sheet-generator/', 'toolUrl lead-sheet-generator');
try { Urls::toolUrl('not-listed'); expect(false, 'bad tool'); } catch (InvalidArgumentException $e) {}
fwrite(STDOUT, "ok\n");
