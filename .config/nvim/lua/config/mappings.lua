-- [nfnl] Compiled from fnl/config/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
vim.keymap.set("n", "<space>", "<nop>", {noremap = true})
vim.keymap.set("n", "<CR>", ":noh<CR><CR>", {noremap = true})
vim.keymap.set("n", "<C-w>T", ":tab split<CR>", {noremap = true, silent = true})
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", {noremap = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = "switch window left"})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = "switch window right"})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = "switch window down"})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = "switch window up"})
vim.keymap.set("i", "jj", "<Esc>", {noremap = true})
vim.keymap.set("n", "<leader>w", "<C-w>v<C-w>l", {desc = "split horizontal"})
vim.keymap.set("n", "<leader>v", "<C-w>s<C-w>l", {desc = "split vertical"})
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc = "general save file"})
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", {desc = "buffer new"})
vim.keymap.set("n", "<tab>", "<cmd>bnext<CR>", {desc = "buffer goto next"})
vim.keymap.set("n", "<S-tab>", "<cmd>bprev<CR>", {desc = "buffer goto prev"})
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", {desc = "close buffer"})
local function get_current_form()
  local extract = require("conjure.extract")
  return extract.form({})
end
local function macro_expand()
  local form_data = get_current_form()
  local form_content = form_data.content
  local cmd = ("(clojure.walk/macroexpand-all '" .. form_content .. ")")
  local eval_module = require("conjure.eval")
  return eval_module["eval-str"]({code = cmd, origin = "macroexpand-shortcut"})
end
vim.keymap.set("n", "<localleader>me", macro_expand, {desc = "Macro expand form"})
local function debug_macro_expand()
  local form_data = get_current_form()
  local form_content = form_data.content
  local eval_module = require("conjure.eval")
  eval_module["eval-str"]({code = ("\"Form under cursor: " .. form_content .. "\""), origin = "debug-cursor-content"})
  return eval_module["eval-str"]({code = ("(clojure.walk/macroexpand-all '" .. form_content .. ")"), origin = "debug-macro-expand"})
end
vim.keymap.set("n", "<localleader>mde", debug_macro_expand, {desc = "Debug + Macro expand form"})
return {}
