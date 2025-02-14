-- [nfnl] Compiled from fnl/plugins/copilotchat.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local CopilotChat = require("CopilotChat")
  return CopilotChat.setup({reuse_buffer = true})
end
return {{"CopilotC-Nvim/CopilotChat.nvim", build = "make tiktoken", dependencies = {"github/copilot.vim", "nvim-lua/plenary.nvim"}, config = _1_, lazy = false}}
