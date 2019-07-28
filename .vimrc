set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Solarized color scheme
Plugin 'ericbn/vim-solarized'
" vim airline ( status bar )
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Git plugin
Plugin 'tpope/vim-fugitive'
" ctrlp plugin
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

set formatoptions=tcqrnl
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" set noshiftround
set scrolloff=5
set backspace=indent,eol,start
set ttyfast
set laststatus=2
set showmode
set showcmd
set matchpairs+=<:>
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set number
set encoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1

