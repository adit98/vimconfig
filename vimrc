set nocompatible
set tabstop=4
set colorcolumn=80
set cursorline
set number
set wrap
set expandtab
set shiftwidth=4
set encoding=utf-8
"filetype plugin indent on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'flazz/vim-colorschemes'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme='deus'

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf = 0
map <C-g>  :YcmCompleter GoToDefinitionElseDeclaration<CR>

colorscheme seattle

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(open(activate_this).read(), dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on
