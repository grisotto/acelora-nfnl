-- [nfnl] Compiled from fnl/plugins/auto-session.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local auto_session = require("auto-session")
  return auto_session.setup()
end
return {{"rmagatti/auto-session", enabled = true, config = _1_, lazy = false}}
