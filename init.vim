let g:python3_host_prog="/opt/homebrew/bin/python3"

lua require('plugins')
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

" Import lua modules
lua require 'impatient'

lua require('lsp-config')
lua require('defaults')
lua require('keymaps')
lua require("which-key").setup()
lua require('Comment').setup()
lua require('session-manager-config')
lua require('tabnine-config')
lua require('bufferline-config')
lua require('lua-line-config')
lua require('toggleterm').setup()
lua require('telescope-config')
lua require('treesitter-config')
lua require('notify-config')
lua require("colorizer-config")
lua require('which-key-config')
lua require('mason-null-config')
lua require("cheatsheet-config")


let g:neoformat_try_node_exe = 1

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat silent!
augroup END

" NerdTree configuration
" Map ctrl + b to toggle NerdTree
map <c-b> :NERDTreeToggle %<CR>

" Configure onedark color scheme
colorscheme tokyonight-night

set nomagic

 autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

" Map cheatsheet keybinding
nnoremap <leader>' :Cheatsheet<CR>

" Use ctrlp for file search with custom ignores
" ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = 'node_modules|DS_Store|git'

" Keybinding for moving lines up and down
nnoremap <A-Up> <Esc>ddkP
nnoremap <A-Down> <Esc>ddjP

" Keybindings for Telescope functionalitylua require('treesitter-config')
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>q <cmd>bd <cr>

nnoremap <leader>fs <cmd>SessionManager load_session<cr>
" terminal maps
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" indentation
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv


