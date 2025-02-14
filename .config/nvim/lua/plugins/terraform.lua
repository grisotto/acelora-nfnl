-- [nfnl] Compiled from fnl/plugins/terraform.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  vim.g.terraform_fmt_on_save = 1
  return nil
end
return {{"hashivim/vim-terraform", ft = {"terraform", "hcl", "tf", "tfvars"}, config = _1_}}
