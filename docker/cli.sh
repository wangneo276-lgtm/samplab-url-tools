#!/bin/sh
set -eu
base="https://samplab.pro"
cmd="${1:-}"
case "$cmd" in
  home)
    printf "%s\n" "$base/"
    ;;
  page)
    case "${2:-}" in
      features) printf '%s\n' "$base/features/" ;;
      pricing) printf '%s\n' "$base/pricing/" ;;
      faq) printf '%s\n' "$base/faq/" ;;
      about) printf '%s\n' "$base/about/" ;;
      *) echo "unknown page" >&2; exit 2 ;;
    esac
    ;;
  tool)
    case "${2:-}" in
      audio-to-midi) printf '%s\n' "$base/audio-to-midi/" ;;
      bpm-key-finder) printf '%s\n' "$base/bpm-key-finder/" ;;
      chord-recognition) printf '%s\n' "$base/chord-recognition/" ;;
      frequency-band-splitter) printf '%s\n' "$base/frequency-band-splitter/" ;;
      midi-to-audio) printf '%s\n' "$base/midi-to-audio/" ;;
      lead-sheet-generator) printf '%s\n' "$base/lead-sheet-generator/" ;;
      *) echo "unknown tool" >&2; exit 2 ;;
    esac
    ;;
  *)
    echo "usage: samplab-url-tools home | page <name> | tool <slug>" >&2
    exit 2
    ;;
esac
