local colors = require('config.colors')

require('lualine').setup {
    options = {
        theme = 'gruvbox-material',
        component_separators = '',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'branch', 'filename' },
        lualine_c = { 'diagnostics', '%=', 'searchcount' },
        lualine_x = { { 'diff',
            symbols = { added = ' ', modified = '⛶ ', removed = ' ' },
            diff_color = {
                added = { fg = colors.green },
                modified = { fg = colors.orange },
                removed = { fg = colors.red }
            }
        }},
        lualine_y = { 'lsp_status', 'filetype', 'progress' },
        lualine_z = { { 'location', separator = { right = '' }, left_padding = 2 } }
        },
        inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {}
}
