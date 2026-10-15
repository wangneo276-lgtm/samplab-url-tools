from __future__ import annotations

_BASE = "https://samplab.pro"
_BRAND = "SampLab Pro"
_DESCRIPTION = "Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK."
_TAGS = ["audio", "midi", "url-builder"]
_PAGES = {
    "features": "/features/",
    "pricing": "/pricing/",
    "faq": "/faq/",
    "about": "/about/"
}

_TOOLS = ["audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator"]

def _join(path: str) -> str:
    return _BASE + path

def home_url() -> str:
    return _BASE + "/"

def page_url(name: str) -> str:
    try:
        path = _PAGES[name]
    except KeyError:
        raise ValueError(f"unknown page: {name}") from None
    return _join(path)

def tool_url(slug: str) -> str:
    if slug not in _TOOLS:
        raise ValueError(f"unknown tool: {slug}")
    return _join("/" + slug + "/")

def metadata() -> dict[str, object]:
    pages = {'home': home_url()}
    for name in _PAGES:
        pages[name] = page_url(name)
    pages.update({
        "tool": tool_url("audio-to-midi"),
    })
    return {
        "name": _BRAND,
        "homepage": home_url(),
        "description": _DESCRIPTION,
        "canonicalPages": pages,
        "tags": list(_TAGS),
    }
