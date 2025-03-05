return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {"nvim-lua/plenary.nvim"},
  opts = {
    workspaces = {
      {
        name = "projects",
        path = "~/vaults/projects",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
    ui = {
        hl_groups = {
            ObsidianTodo = { bold = true, fg = "#ccff33" },
            ObsidianDone = { bold = true, fg = "#00ff00" },
            ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
            ObsidianTilde = { bold = true, fg = "#ff5370" },
            ObsidianImportant = { bold = true, fg = "#d73128" },
            ObsidianBullet = { bold = true, fg = "#7d3c98" },
            ObsidianRefText = { underline = true, fg = "#c792ea" },
            ObsidianExtLinkIcon = { fg = "#c792ea" },
            ObsidianTag = { italic = true, fg = "#89ddff" },
            ObsidianBlockID = { italic = true, fg = "#89ddff" },
            ObsidianHighlightText = { bg = "#75662e" },
        },
    },
    note_id_func = function(title)
        local suffix = ""

        if title ~= nil then
          suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end

        return tostring(os.time()) .. "-" .. suffix
    end,
    note_path_func = function(spec)
        local title = spec.title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        local path = spec.dir / tostring(title)
        return path:with_suffix(".md")
    end
  }
}
