class Urls {
  static const base = 'https://samplab.pro';
  static const pages = <String, String>{ 'features': '/features/', 'pricing': '/pricing/', 'faq': '/faq/', 'about': '/about/' };
  String homeUrl() => base + '/';
  String pageUrl(String name) {
    final path = pages[name];
    if (path == null) throw ArgumentError('unknown page: $name');
    return base + path;
  }

  String tool_url(String slug) {
    const allowed = ['audio-to-midi', 'bpm-key-finder', 'chord-recognition', 'frequency-band-splitter', 'midi-to-audio', 'lead-sheet-generator'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown tool_url: $slug');
    return base + '/' + slug + '/';
  }
}
