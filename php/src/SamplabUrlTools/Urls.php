<?php

declare(strict_types=1);

namespace SamplabUrlTools;

final class Urls
{
    private const BASE = 'https://samplab.pro';

    /** @return array<string, mixed> */
    public static function metadata(): array
    {
        return [
            'name' => 'SampLab Pro',
            'homepage' => self::homeUrl(),
            'description' => 'Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.',
            'canonicalPages' => array_merge(
                ['home' => self::homeUrl()],
                [
                    'features' => self::pageUrl('features'),
                    'pricing' => self::pageUrl('pricing'),
                    'faq' => self::pageUrl('faq'),
                    'about' => self::pageUrl('about'),
                ],
            ),
            'tags' => ['audio', 'midi', 'url-builder'],
        ];
    }

    public static function homeUrl(): string
    {
        return self::BASE . '/';
    }

    public static function pageUrl(string $name): string
    {
        $pages = [
            'features' => '/features/',
            'pricing' => '/pricing/',
            'faq' => '/faq/',
            'about' => '/about/',
        ];
        if (!array_key_exists($name, $pages)) {
            throw new \InvalidArgumentException('unknown page: ' . $name);
        }
        return self::BASE . $pages[$name];
    }

    public static function toolUrl(string $slug): string
    {
        $allowed = ['audio-to-midi', 'bpm-key-finder', 'chord-recognition', 'frequency-band-splitter', 'midi-to-audio', 'lead-sheet-generator'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown tool: ' . $slug);
        }
        return self::BASE . '/' . $slug . '/';
    }

}
