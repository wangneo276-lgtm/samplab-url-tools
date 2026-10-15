const BASE = "https://samplab.pro";
const PAGES = {"features": "/features/", "pricing": "/pricing/", "faq": "/faq/", "about": "/about/"};

function join(path) {
  return BASE + path;
}

export function homeUrl() {
  return BASE + '/';
}

export function pageUrl(name) {
  if (!Object.prototype.hasOwnProperty.call(PAGES, name)) {
    throw new Error(`unknown page: ${name}`);
  }
  return join(PAGES[name]);
}

const TOOLS = new Set(["audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator"]);
export function toolUrl(slug) {
  if (!TOOLS.has(slug)) {
    throw new Error(`unknown tool: ${slug}`);
  }
  return join("/" + slug + "/");
}

export function metadata() {
  const canonicalPages = { home: homeUrl() };
  for (const name of Object.keys(PAGES)) canonicalPages[name] = pageUrl(name);
  canonicalPages.tool = toolUrl("audio-to-midi");
  return {
    name: "SampLab Pro",
    homepage: homeUrl(),
    description: "Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.",
    canonicalPages,
    tags: ["audio", "midi", "url-builder"],
  };
}
