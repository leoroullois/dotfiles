local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
    -- media_files = {
    --   -- filetypes whitelist
    --   -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
    --   filetypes = {"png", "webp", "jpg", "jpeg"},
    --   find_cmd = "fd" -- find command (defaults to `fd`)
    -- }
  },
}

require("telescope").load_extension "file_browser"
require('telescope').load_extension('env')
-- require("telescope").load_extension "media_files"
