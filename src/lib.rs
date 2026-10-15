const BASE: &str = "https://samplab.pro";

fn join(path: &str) -> String {
    format!("{BASE}{path}")
}

pub fn home_url() -> String {
    format!("{BASE}/")
}

pub fn page_url(name: &str) -> Result<String, &'static str> {
    let path = match name {
        "features" => "/features/",
        "pricing" => "/pricing/",
        "faq" => "/faq/",
        "about" => "/about/",
        _ => return Err("unknown page"),
    };
    Ok(join(path))
}

pub fn tool_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "audio-to-midi" => "/audio-to-midi/",
        "bpm-key-finder" => "/bpm-key-finder/",
        "chord-recognition" => "/chord-recognition/",
        "frequency-band-splitter" => "/frequency-band-splitter/",
        "midi-to-audio" => "/midi-to-audio/",
        "lead-sheet-generator" => "/lead-sheet-generator/",
        _ => return Err("unknown tool"),
    };
    Ok(join(path))
}

pub fn metadata() -> Vec<(&'static str, String)> {
    vec![
        ("name", "SampLab Pro".to_string()),
        ("homepage", home_url()),
        ("description", "Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.".to_string()),
    ]
}
