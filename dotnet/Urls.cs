using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace Samplab.UrlTools;

public static partial class Urls
{
    public const string Base = "https://samplab.pro";
    private static readonly Dictionary<string, string> Pages = new()
    {
        { "features", "/features/" },
        { "pricing", "/pricing/" },
        { "faq", "/faq/" },
        { "about", "/about/" },
    };

    public static string HomeUrl() => Base + "/";

    public static string PageUrl(string name)
    {
        if (!Pages.TryGetValue(name, out var path))
            throw new ArgumentException("unknown page: " + name);
        return Base + path;
    }

    public static string ToolUrl(string slug)
    {
        string[] allowed = new[] { "audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown tool_url: " + slug);
        return Base + "/" + slug + "/";
    }
}
