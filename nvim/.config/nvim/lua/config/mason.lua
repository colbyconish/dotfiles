require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "basedpyright", "lua_ls", "clangd", "bashls" },
    automatic_enable = true
}

vim.lsp.config('*', {})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = { version = 'Lua 5.1' },
            diagnostics = {
                globals = { 'bit', 'vim', 'it', 'describe', 'before_each', 'after_each' },
            },
        },
    },
})

vim.lsp.config('basedpyright', {
    settings = {
        basedpyright = {
            analysis = {
                extraPaths = {"build"}
            }
        }
    }
})

vim.diagnostic.config({
  virtual_text = true
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
