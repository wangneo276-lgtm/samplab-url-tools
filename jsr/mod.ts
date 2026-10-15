const BASE = "https://samplab.pro";
const PAGES: Record<string, string> = { "features": "/features/", "pricing": "/pricing/", "faq": "/faq/", "about": "/about/" };
export function homeUrl(): string { return BASE + "/"; }
export function pageUrl(name: string): string {
  const path = PAGES[name];
  if (!path) throw new Error("unknown page: " + name);
  return BASE + path;
}

export function toolUrl(slug: string): string {
  const allowed = ["audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator"];
  if (!allowed.includes(slug)) throw new Error("unknown tool_url: " + slug);
  return BASE + "/" + slug + "/";
}
