-- [nfnl] Compiled from fnl/plugins/copilot.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local copilot = require("copilot")
  return copilot.setup({suggestion = {auto_trigger = true}})
end
return {{"zbirenbaum/copilot.lua", event = "InsertEnter", cmd = "Copilot", config = _1_, lazy = false}}
