-- [nfnl] Compiled from fnl/plugins/bufferline.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local bufferline = require("bufferline")
  return bufferline.setup()
end
return {{"akinsho/bufferline.nvim", version = "*", dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_, lazy = false}}
