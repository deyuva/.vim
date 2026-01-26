
" :help key-notation
" :help variable-prefix

let g:mapleader = " "


nnoremap <leader> :

"netrw
nnoremap <leader>e :Ex<CR>

"read
nnoremap <leader>re :re 
nnoremap <leader>rs :re !

"write
nnoremap <leader>wr :w 
nnoremap <leader>q :q<CR>

"windows
nnoremap <leader>wj <c-w>j<CR>
nnoremap <leader>wk <c-w>k<CR>
nnoremap <leader>wh <c-w>h<CR>
nnoremap <leader>wl <c-w>l<CR>
nnoremap <leader>wo <c-w>o<CR>
nnoremap <leader>wq <c-w>o<CR>


"splits
nnoremap <leader>sh :split<CR> 
nnoremap <leader>sv :vsplit<CR> 

"edit
nnoremap <leader>n :enew 

"visual block cmd - re-think this
"vnoremap <leader> :s

"marks
nnoremap <leader>sm m
nnoremap <leader>gm '

"fzf
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :Rg<CR>

echo "sourced ~/.vim/keybinds.vim"

