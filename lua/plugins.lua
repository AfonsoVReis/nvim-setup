-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim'
	use 'Shatur/neovim-session-manager'
	use 'tpope/vim-surround'
	use 'preservim/nerdtree'
	-- use { 'neoclide/coc.nvim', branch='release' }
	use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	}
	use {
		'Shougo/deoplete.nvim',
		run = ':UpdateRemotePlugins'
	}
	use 'Shougo/vimfiler.vim'
	use 'Shougo/vimshell.vim'
	use 'nvim-tree/nvim-web-devicons'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use 'ctrlpvim/ctrlp.vim'
	use 'navarasu/onedark.nvim'
	use 'christoomey/vim-tmux-navigator'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'sudormrfbin/cheatsheet.nvim'
	use 'nvim-lua/popup.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'ryanoasis/vim-devicons'
	use 'arcticicestudio/nord-vim'
	use 'numToStr/Comment.nvim'
	use 'akinsho/toggleterm.nvim'
	use 'folke/which-key.nvim'
	use 'windwp/nvim-ts-autotag'
	use {'nvim-telescope/telescope-ui-select.nvim' }
	-- use {'dominikduda/vim_current_word'}
	use {'nyoom-engineering/oxocarbon.nvim'}
	use {'tpope/vim-sleuth'}
	use {'SirVer/ultisnips'}
	use {'honza/vim-snippets'}
	use {'mg979/vim-visual-multi', branch = 'master'}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	use 'folke/tokyonight.nvim'
	use 'mhinz/vim-startify'
	use 'rcarriga/nvim-notify'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use({
	    "glepnir/lspsaga.nvim",
	    branch = "main",
	    config = function()
		require("lspsaga").setup({})
	    end,
	    requires = { {"nvim-tree/nvim-web-devicons"} }
	})
	use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
        use 'norcalli/nvim-colorizer.lua'
	use {
	    "windwp/nvim-autopairs",
	    config = function() require("nvim-autopairs").setup {} end
	}
end)
