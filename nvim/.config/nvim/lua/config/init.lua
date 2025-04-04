-- Lazy always first
require("config.lazy")

-- Colorscheme second to avoid overiding color group changes
require("config.colorscheme")

-- Everybody else
require("config.treesitter")
require("config.lsp")
require("config.cmp")
require("config.mason")
require("config.gitsigns")
require("config.lualine")
