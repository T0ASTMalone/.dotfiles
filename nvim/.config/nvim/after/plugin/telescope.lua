local tel = require("telescope");
local actions = require("telescope.actions");

tel.setup({
  defaults = {
    file_ignore_patterns = { "dataset.*", "^node_modules/", ".git/" }
  },
  pickers = {
    find_files = {
      mappings = {
        n = {
          ["<C-\\>"] = actions.file_vsplit,
        },
        i = {
          ["<C-\\>"] = actions.file_vsplit,
        }
      }
    }
  }
})
