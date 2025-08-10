-- ~/nvim/lua/topniz/plugins/colorscheme.lua

return {
  "morhetz/gruvbox",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme gruvbox")
  end,
}
