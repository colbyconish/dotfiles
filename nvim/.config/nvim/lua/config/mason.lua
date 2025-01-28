require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason-lspconfig").setup_handlers {
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            capabilities = capabilities
        }
    end,
    lua_ls = function()
        require("lspconfig")["lua_ls"].setup {
            capabilities = capabilities,
            settings = {
                  Lua = {
                    runtime = {
                      -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                      version = "LuaJIT",
                      path = vim.split(package.path, ";"),
                    },
                    diagnostics = { globals = { "vim", "use"}, },
                    workspace = {
                      -- Make the server aware of Neovim runtime files and plugins
                      library = { vim.env.VIMRUNTIME },
                      checkThirdParty = false,
                    },
                    telemetry = { enable = false, },
                  },
                },
        }
    end,
    luau_lsp = function()
        require('lspconfig').luau_lsp.setup{
            capabilities = capabilities,
            cmd = {
                "C:/Users/Colby/AppData/Local/nvim-data/mason/bin/luau-lsp",
                "lsp",
                "--definitions=C:/Users/Colby/AppData/Local/nvim-data/luau-lsp/globalTypes.PluginSecurity.d.luau",
                "--documentation=C:/Users/Colby/AppData/Local/nvim-data/luau-lsp/api-docs.json"
            }
        }
    end
}
