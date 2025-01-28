require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    ["lua_ls"] = function()
        require("lspconfig")["lua_ls"].setup {
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
    end
}
