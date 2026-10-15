require_relative 'lib/samplab_url_tools'
raise 'home' unless SamplabUrlTools.home_url == "https://samplab.pro/"
raise 'page' unless SamplabUrlTools.page_url("pricing") == "https://samplab.pro/pricing/"
begin
  SamplabUrlTools.page_url('not-a-page')
  raise 'page should fail'
rescue ArgumentError
end
raise 'extra' unless SamplabUrlTools.tool_url("audio-to-midi") == "https://samplab.pro/audio-to-midi/"
begin
  SamplabUrlTools.tool_url('NOT A SLUG')
  raise 'extra should fail'
rescue ArgumentError
end
puts 'ok'
