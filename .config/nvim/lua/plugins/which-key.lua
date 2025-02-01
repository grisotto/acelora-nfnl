-- [nfnl] Compiled from fnl/plugins/which-key.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local which_key = require("which-key")
  return which_key.setup({})
end
return {{"folke/which-key.nvim", event = "VeryLazy", config = _1_}}
