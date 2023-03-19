vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  transparent_background = true,
  dim_inactive = { 
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" }
  }
})

vim.cmd[[
  colorscheme catppuccin 
]]

