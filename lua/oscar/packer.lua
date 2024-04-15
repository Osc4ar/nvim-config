-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      "nvim-telescope/telescope.nvim",
      requires = {
        { "nvim-telescope/telescope-live-grep-args.nvim" },
      },
      config = function()
        require("telescope").load_extension("live_grep_args")
      end
  }

  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use { "catppuccin/nvim", as = "catppuccin" }

  use ('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'})

  use('itchyny/lightline.vim')
  use('ThePrimeagen/harpoon')
  use('tpope/vim-fugitive')
  use('airblade/vim-gitgutter')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }


  use {
      'akinsho/flutter-tools.nvim',
      requires = {
          'nvim-lua/plenary.nvim',
          'stevearc/dressing.nvim', -- optional for vim.ui.selecting
      },
  }

   -- Clojure REPL
  use('tpope/vim-dispatch')
  use('Olical/conjure')
  use('clojure-vim/vim-jack-in')
  use('radenling/vim-dispatch-neovim')
end)
