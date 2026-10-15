module SamplabUrlTools
  BASE = "https://samplab.pro"
  PAGES = { "features" => "/features/", "pricing" => "/pricing/", "faq" => "/faq/", "about" => "/about/" }
  def self.home_url
    BASE + "/"
  end

  def self.page_url(name)
    path = PAGES[name]
    raise ArgumentError, "unknown page: #{name}" if path.nil?
    BASE + path
  end

  def self.tool_url(slug)
    allowed = ["audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator"]
    raise ArgumentError, "unknown tool_url: #{slug}" unless allowed.include?(slug)
    BASE + "/" + slug + "/"
  end
end
