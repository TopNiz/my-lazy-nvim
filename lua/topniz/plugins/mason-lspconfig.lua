-- ~/nvim/lua/topniz/plugins/mason.lua

return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",

  },
  opts = {
      automatic_installation = true,
      ensure_installed = {
        "cssls",
        "eslint",
        "html",
        "jsonls",
        "ts_ls",
        "pyright",
        "tailwindcss",
      },
    },
}
