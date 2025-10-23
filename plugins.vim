
" use :PlugInstall to use the below listed Plugins.
" use :PlugClean to remove unused Plugins.


call plug#begin()

"LSP:
Plug 'prabirshrestha/vim-lsp' 
Plug 'mattn/vim-lsp-settings' "easy installationg of LSP servers

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Autocomplete:
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()
