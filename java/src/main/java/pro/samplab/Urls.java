package pro.samplab;

import java.util.HashMap;
import java.util.Map;

public final class Urls {
    public static final String BASE = "https://samplab.pro";
    private static final Map<String, String> PAGES = new HashMap<>();
    static {
        PAGES.put("features", "/features/");
        PAGES.put("pricing", "/pricing/");
        PAGES.put("faq", "/faq/");
        PAGES.put("about", "/about/");
    }
    private Urls() {}
    public static String homeUrl() { return BASE + "/"; }
    public static String pageUrl(String name) {
        String path = PAGES.get(name);
        if (path == null) throw new IllegalArgumentException("unknown page: " + name);
        return BASE + path;
    }

    public static String toolUrl(String slug) {
        if (!java.util.Set.of("audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator").contains(slug)) {
            throw new IllegalArgumentException("unknown tool_url: " + slug);
        }
        return BASE + "/" + slug + "/";
    }
}
