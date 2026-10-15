import test from 'node:test';
import assert from 'node:assert/strict';
import { homeUrl, metadata, pageUrl, toolUrl } from './index.js';

test('metadata points at the live site', () => {
  const data = metadata();
  assert.equal(data.name, "SampLab Pro");
  assert.equal(data.homepage, "https://samplab.pro/");
  assert.equal(data.homepage.includes(' '), false);
});

test('page features', () => {
  assert.equal(pageUrl("features"), "https://samplab.pro/features/");
});

test('page pricing', () => {
  assert.equal(pageUrl("pricing"), "https://samplab.pro/pricing/");
});

test('page faq', () => {
  assert.equal(pageUrl("faq"), "https://samplab.pro/faq/");
});

test('page about', () => {
  assert.equal(pageUrl("about"), "https://samplab.pro/about/");
});

test('unknown page', () => {
  assert.throws(() => pageUrl('not-a-page'), /unknown page/);
});

test('toolUrl', () => {
  assert.equal(toolUrl("audio-to-midi"), "https://samplab.pro/audio-to-midi/");
  assert.equal(toolUrl("bpm-key-finder"), "https://samplab.pro/bpm-key-finder/");
  assert.equal(toolUrl("chord-recognition"), "https://samplab.pro/chord-recognition/");
  assert.equal(toolUrl("frequency-band-splitter"), "https://samplab.pro/frequency-band-splitter/");
  assert.equal(toolUrl("midi-to-audio"), "https://samplab.pro/midi-to-audio/");
  assert.equal(toolUrl("lead-sheet-generator"), "https://samplab.pro/lead-sheet-generator/");
  assert.throws(() => toolUrl('not-listed'), /unknown tool/);
});
