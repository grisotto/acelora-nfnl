-- [nfnl] Compiled from fnl/plugins/which-key.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local which_key = require("which-key")
  return which_key.setup({keys = {"<leader>", "<c-w>", "\"", "'", "`", "c", "v", "g"}, cmd = "WhichKey"})
end
local function _2_()
  vim.api.nvim_set_keymap("n", "<leader>wK", "<cmd>WhichKey <CR>", {desc = "whichkey all keymaps"})
  return vim.api.nvim_set_keymap("n", "<leader>wk", "(fn [] (vim.cmd (.. \"WhichKey \" (vim.fn.input \"WhichKey: \"))))", {desc = "whichkey query lookup"})
end
return {{"folke/which-key.nvim", config = _1_, init = _2_}}
