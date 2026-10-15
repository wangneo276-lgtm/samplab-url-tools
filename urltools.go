package urltools

import (
    "fmt"
)

const baseURL = "https://samplab.pro"

func HomeURL() string {
    return baseURL + "/"
}

func PageURL(name string) (string, error) {
    pages := map[string]string{
        "features": "/features/",
        "pricing": "/pricing/",
        "faq": "/faq/",
        "about": "/about/",
    }
    path, ok := pages[name]
    if !ok {
        return "", fmt.Errorf("unknown page: %s", name)
    }
    return baseURL + path, nil
}

func ToolURL(slug string) (string, error) {
    switch slug {
    case "audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator":
        return baseURL + "/" + slug + "/", nil
    default:
        return "", fmt.Errorf("unknown tool: %s", slug)
    }
}

func Metadata() map[string]string {
    return map[string]string{
        "name":        "SampLab Pro",
        "homepage":    HomeURL(),
        "description": "Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.",
    }
}
