import Foundation

public enum UrlError: Error { case unknown(String, String) }

public enum Urls {
    public static let base = "https://samplab.pro"
    private static let pages: [String: String] = ["features": "/features/", "pricing": "/pricing/", "faq": "/faq/", "about": "/about/"]
    public static func homeUrl() -> String { base + "/" }
    public static func pageUrl(_ name: String) throws -> String {
        guard let path = pages[name] else { throw UrlError.unknown("page", name) }
        return base + path
    }

    public static func toolUrl(_ slug: String) throws -> String {
        let allowed = ["audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator"]
        guard allowed.contains(slug) else { throw UrlError.unknown("tool_url", slug) }
        return base + "/" + slug + "/"
    }
}
