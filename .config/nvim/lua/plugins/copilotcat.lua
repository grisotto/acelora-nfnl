-- [nfnl] Compiled from fnl/plugins/copilotcat.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local CopilotChat = require("CopilotChat")
  return CopilotChat.setup()
end
return {{"CopilotC-Nvim/CopilotChat.nvim", build = "make tiktoken", dependencies = {"github/copilot.vim", "nvim-lua/plenary.nvim"}, config = _1_, lazy = false}}
