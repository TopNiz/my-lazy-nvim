-- ~/nvim/lua/topniz/plugins/lspconfig.lua

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local nvim_lsp = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    local protocol = require("vim.lsp.protocol")

    local on_attach = function(client, bufnr)
      -- format on save
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("Format", { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end
    end

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config.ts_ls = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.cssls = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.tailwindcss = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.html = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.jsonls = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.eslint = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.pyright = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.gopls = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    vim.lsp.config.golangci_lint_ls = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}
