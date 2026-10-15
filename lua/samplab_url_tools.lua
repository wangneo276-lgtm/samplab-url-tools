local M = {}
local BASE = "https://samplab.pro"
local PAGES = { ["features"]="/features/", ["pricing"]="/pricing/", ["faq"]="/faq/", ["about"]="/about/" }

function M.home_url()
  return BASE .. "/"
end

function M.page_url(name)
  local path = PAGES[name]
  if not path then error("unknown page: " .. tostring(name)) end
  return BASE .. path
end

function M.tool_url(slug)
  local allowed = { "audio-to-midi", "bpm-key-finder", "chord-recognition", "frequency-band-splitter", "midi-to-audio", "lead-sheet-generator" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown tool_url: " .. tostring(slug)) end
  return BASE .. "/" .. slug .. "/"
end
return M
