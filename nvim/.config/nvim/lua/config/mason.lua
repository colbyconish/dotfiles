require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        'pyright'
    },
    automatic_enable = true
}
