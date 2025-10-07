--- ~/nvim/lua/topniz/plugins/treesiter.lua

return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "bash",
                "c",
                "css",
                "dockerfile",
                "gitignore",
                "glimmer",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "rust",
                "tsx",
                "typescript",
                "vim",
                "yaml",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
            rainbow = {
                enable = true,
                -- disable = { "html" },
                extended_mode = false,
                max_file_lines = nil,
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
        })
        
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.glimmer = {
            filetype = "hbs",
            used_by = {
              "handlebars",
              "html.handlebars",
              "mustache",
              "html.mustache",
            }
        }
    end,
}
