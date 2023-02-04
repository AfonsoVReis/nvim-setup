" Vim Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimshell.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'zarnivoop/bufferline'
Plug 'valloric/youcompleteme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'navarasu/onedark.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
call plug#end()

" Vim Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

set number

" NerdTree
map <c-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Coc.nvim
set omnifunc=syntaxcomplete#Complete
let g:coc_global_extensions = ["coc-tsserver","coc-eslint","coc-html","coc-css","coc-prettier","coc-json"]
let g:coc_diagnostic_enable_sign = 1
let g:coc_diagnostic_enable_virtualtext = 1

" Linting:
autocmd FileType typescript setlocal omnifunc=coc#complete
autocmd FileType javascript setlocal omnifunc=coc#complete
autocmd FileType html setlocal omnifunc=coc#complete
autocmd FileType css setlocal omnifunc=coc#complete

" Neoformat
let g:neoformat_auto_format = 1
let g:neoformat_python_autopep8 = 1

" Syntax Highlighting
syntax on

" Themes
let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

" Auto-fix on save for ESLint
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx :silent !eslint --fix %

" ctrlp.vim
" Use ctrlp for file search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'



" keybind
nnoremap <A-Up> <Esc>ddkP
nnoremap <A-Down> <Esc>ddjP
" Search and replace keybinding
nnoremap <D-d> :Exec 'normal! v%s/\<<C-r><C-w>\>//gc'<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

