return {
  "folke/snacks.nvim",
  dependencies = {'nvim-telescope/telescope.nvim'},
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = {
        preset = {
            keys = {
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = " ", key = "f", desc = "Find File", action = ":Telescope find_files" },
                { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                --{ icon = " ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
                { icon = " ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
                { icon = " ", key = "c", desc = "Config", action = function()
                    require("telescope.builtin").find_files({cwd=vim.fn.stdpath('config')})
                end},
                { icon = "? ", key = "H", desc = "Help", action = ":Telescope help_tags" },
                { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
        },
    },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
