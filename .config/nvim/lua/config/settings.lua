-- [nfnl] Compiled from fnl/config/settings.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local str = autoload("nfnl.string")
local core = autoload("nfnl.core")
vim.wo.wrap = false
do
  local options = {encoding = "utf-8", expandtab = true, tabstop = 2, shiftwidth = 2, softtabstop = 2, completeopt = "menuone,noselect", ignorecase = true, smartcase = true, clipboard = "unnamedplus", number = true, list = true, listchars = str.join(",", {"tab:\226\150\182-", "trail:\226\128\162", "extends:\194\187", "precedes:\194\171", "eol:\194\172"}), ruler = true, signcolumn = "number", undofile = true, splitbelow = true, splitright = true, hlsearch = true, termguicolors = true, sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"}
  for option, value in pairs(options) do
    core.assoc(vim.o, option, value)
  end
end
return {}
