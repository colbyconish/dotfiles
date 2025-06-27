require("mason").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason-lspconfig").setup({
    ensure_installed = { },
    automatic_enable = true
})
