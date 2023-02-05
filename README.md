# AfonsoVReis/nvim-setup

All my `neovim` configs can be found in this repository.

Also implements LSP for the most common front-end stack.

I intend to move all the configs from `init.vim` into a `lua` file, but not today.

# Installation
*Make sure you are using `neovim` nightly head, otherwise some plugins will not work properly.*

- Copy the content of this repo into your `/nvim` folder.
- Run `:PackerInstall`, if any error pops make sure you have the proper requirements, it should be easy to debug and follow.
- If running on `Windows` make sure you have your `c` compiler properly set, install `MinGW`.

## Pair it with
- `tmux`
- `fzf`
- `z`

# KeyMaps

*Not updated*

Meanwhile you can just `<leader> '` or make use of the `which-key` plugin.

# Plugins

*Not updated*

## tpope/vim-surround
[vim-surround](https://github.com/tpope/vim-surround) provides easy deletion, changing, and adding of surroundings in Vim.

## preservim/nerdtree
[nerdtree](https://github.com/preservim/nerdtree) is a file explorer plugin for Vim that provides "tree" interface for navigating the file system. 

## Shougo/deoplete.nvim
[deoplete.nvim](https://github.com/Shougo/deoplete.nvim) is a dark powered asynchronous completion framework for neovim/Vim8. 

## Shougo/vimshell.vim
[vimshell.vim](https://github.com/Shougo/vimshell.vim) is a shell interface for Vim. 

## ctrlpvim/ctrlp.vim
[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) is a full path fuzzy file, buffer, mru, tag, etc finder for Vim.

## navarasu/onedark.nvim
[onedark.nvim](https://github.com/navarasu/onedark.nvim) provides an One Dark color scheme for Vim/Neovim. 

## christoomey/vim-tmux-navigator
[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) allows seamless navigation between tmux panes and Vim splits. 

## nvim-lua/plenary.nvim
[plenary.nvim](https://github.com/nvim-lua/plenary.nvim) provides full reloading of plugins without restarting Neovim.

## nvim-telescope/telescope.nvim
[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) is a universal fuzzy-finder for Neovim/Vim.

## nvim-treesitter
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is a syntax highlighting plugin for Neovim. It allows you to have accurate syntax highlighting for multiple languages within Neovim.

## indent-blankline
[indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) is a Vim plugin that highlights indentation levels and blank lines in the code.

## cheatsheet
[cheatsheet](https://github.com/sudormrfbin/cheatsheet.nvim) is a Vim plugin that provides an interactive cheat sheet for Neovim. It is useful for quickly remembering commands and shortcuts.

## plenary
[plenary](https://github.com/nvim-lua/plenary.nvim) is a Neovim plugin that enhances the Neovim API with utility functions and other enhancements.

## lualine
[lualine](https://github.com/nvim-lualine/lualine.nvim) is a plugin for Neovim that provides line-oriented navigation and manipulation.

## vim-devicons
[vim-devicons](https://github.com/ryanoasis/vim-devicons) is a plugin for Vim that adds file type icons to your file explorer.

## nvim-web-devicons
[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) is a plugin for Neovim that adds web-related file type icons to your file explorer.

## nord-vim
[nord-vim](https://github.com/arcticicestudio/nord-vim) is a plugin for Vim that provides a clean and elegant color scheme inspired by the Nord color palette.

## bufferline
[bufferline](https://github.com/akinsho/bufferline.nvim) is a Neovim plugin that provides a compact and customizable status line for the active buffer.

## Comment
[Comment](https://github.com/numToStr/Comment.nvim) is a Neovim plugin that provides easy and intuitive commenting for multiple file formats.
