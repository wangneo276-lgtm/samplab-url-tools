local M = require 'samplab_url_tools'
assert(M.home_url() == 'https://samplab.pro/')
assert(M.page_url('pricing') == 'https://samplab.pro/pricing/')
assert(M.tool_url('audio-to-midi') == 'https://samplab.pro/audio-to-midi/')
print('ok')
