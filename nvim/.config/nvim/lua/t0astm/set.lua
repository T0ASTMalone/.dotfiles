vim.opt.exrc = true
vim.opt.guicursor = ''
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.showmode = false

vim.opt.tabstop  = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff=999

vim.opt.termguicolors = true

vim.opt.smartindent = true
vim.opt.updatetime = 50

vim.opt.completeopt= {'menuone', 'noinsert', 'noselect'}
vim.opt.colorcolumn="80,100,120"

vim.opt.wrap = false 

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.mapleader = ' '

-- emmet 
-- TODO: change this as this gets in the way when using f & F motion with , & ;  
-- to go back and forth
vim.g.user_emmet_leader_key=','

-- completeopt
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently
vim.cmd([[
  set signcolumn=yes
]])
-- autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
