"set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable                 " use filetype-based syntax highlighting, ftplugins, and indentation
filetype plugin indent on

runtime! ftplugin/man.vim " vim man pages

"       Basic Behavior:
"       ===============

set guioptions-=m     
set guioptions-=T    
set guioptions-=r   

set wrap                " Wrap lines
set encoding=utf-8      " Set encoding to UTF-8 (default was "latin1")
set mouse=a             " Enable mouse support 
set wildmenu            " Visual autocomplete for command menu
set lazyredraw          " Redraw screen only when we need to
set showmatch           " Highlight matching parentheses / brackets [{()}]
set laststatus=2        " Always show statusline (even with only single window)
set ruler               " Show line and column number of the cursor on right side oatusline
set visualbell          " Blink cursor on error, instead of beeping


"       LSP:
"       ==============

"       Auto Complete:
"       ==============
"
let g:asyncomplete_auto_popup = 1
""set completeopt= menuone,noinsert,noselect,preview

"       Key Bindings:
"       =============
" Note: normap is meant to not recursively keep remapping a char to itself.
"
" auto-complete:
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
inoremap <expr> <C-e> pumvisible() ? asyncomplete#cancel_popup() : "\<C-e>"
" :map <F2> a<C-R>=strftime("%c")<CR><Esc>
"
" move vertically by visual line {don't skip wrapped lines)
nmap j gj
nmap k gk

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>
" Note: this is clever: it adds a remap AND keeps the original key functionality 

"       Appearance:
"       ===========

set number         
set relativenumber     

"":set statusline?>  " if this is set rulerformat will be ignored

set statusline=
set statusline +=%8*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines

"       Tab Settings:
"       =============
                    

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"       Search Settings:
"       ================


set incsearch           " search as characters are entered
set hlsearch            " highlight matches

echo "sourced ~/.vim/basic.vim"
