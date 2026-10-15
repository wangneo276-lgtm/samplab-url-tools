use samplab_url_tools::{home_url, metadata, page_url};
use samplab_url_tools::tool_url;

#[test]
fn metadata_has_homepage() {
    let data = metadata();
    assert!(data.iter().any(|(k, v)| *k == "name" && v == "SampLab Pro"));
    assert!(data.iter().any(|(k, v)| *k == "homepage" && v == "https://samplab.pro/"));
}

#[test]
fn pages_match() {
    assert_eq!(page_url("features").unwrap(), "https://samplab.pro/features/");
    assert_eq!(page_url("pricing").unwrap(), "https://samplab.pro/pricing/");
    assert_eq!(page_url("faq").unwrap(), "https://samplab.pro/faq/");
    assert_eq!(page_url("about").unwrap(), "https://samplab.pro/about/");
    assert!(page_url("not-a-page").is_err());
}

#[test]
fn tool_url_matches() {
    assert_eq!(tool_url("audio-to-midi").unwrap(), "https://samplab.pro/audio-to-midi/");
    assert_eq!(tool_url("bpm-key-finder").unwrap(), "https://samplab.pro/bpm-key-finder/");
    assert_eq!(tool_url("chord-recognition").unwrap(), "https://samplab.pro/chord-recognition/");
    assert_eq!(tool_url("frequency-band-splitter").unwrap(), "https://samplab.pro/frequency-band-splitter/");
    assert_eq!(tool_url("midi-to-audio").unwrap(), "https://samplab.pro/midi-to-audio/");
    assert_eq!(tool_url("lead-sheet-generator").unwrap(), "https://samplab.pro/lead-sheet-generator/");
    assert!(tool_url("not-listed").is_err());
}
