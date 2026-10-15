package urltools

import "testing"

func TestMetadata(t *testing.T) {
    data := Metadata()
    if data["name"] != "SampLab Pro" {
        t.Fatalf("brand %s", data["name"])
    }
    if data["homepage"] != "https://samplab.pro/" {
        t.Fatalf("homepage %s", data["homepage"])
    }
}

func TestPages(t *testing.T) {
    {
        got, err := PageURL("features")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/features/" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("pricing")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/pricing/" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("faq")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/faq/" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("about")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/about/" { t.Fatalf("%s", got) }
    }
    if _, err := PageURL("not-a-page"); err == nil { t.Fatal("expected error") }
}

func TestToolURL(t *testing.T) {
    {
        got, err := ToolURL("audio-to-midi")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/audio-to-midi/" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("bpm-key-finder")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/bpm-key-finder/" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("chord-recognition")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/chord-recognition/" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("frequency-band-splitter")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/frequency-band-splitter/" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("midi-to-audio")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/midi-to-audio/" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("lead-sheet-generator")
        if err != nil { t.Fatal(err) }
        if got != "https://samplab.pro/lead-sheet-generator/" { t.Fatalf("%s", got) }
    }
    if _, err := ToolURL("not-listed"); err == nil { t.Fatal("expected error") }
}
