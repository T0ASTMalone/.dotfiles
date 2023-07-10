-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'ThePrimeagen/vim-be-good'

  -- Look N' Feel 
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use {'ojroques/nvim-hardline'}

  -- Nav Stuff
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {{
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
    }}
  }
  use 'theprimeagen/harpoon'

  -- Dev Stuff
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      --  {'mfussenegger/nvim-jdtls'},
      {'ray-x/lsp_signature.nvim'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- dev languages
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use 'nvim-treesitter/playground'
  use 'mfussenegger/nvim-jdtls'

  -- web components
  -- use 'jonsmithers/vim-html-template-literals'
  --- use 'pangloss/vim-javascript'
  -- use 'webdesus/polymer-ide.vim'

  -- dev helpers
  use 'mattn/emmet-vim'
  use 'MunifTanjim/prettier.nvim'
  use 'MunifTanjim/eslint.nvim'
  use 'lewis6991/gitsigns.nvim'
  use {
    'ttys3/nvim-blamer.lua',
    config = 'vim.cmd[[call nvimblamer#auto()]]'
  }

  -- viewers
  use 'mickael-menu/zk-nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  })
end)
