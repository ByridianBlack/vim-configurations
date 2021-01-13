call plug#begin("~/.vim/plugged")
	Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'arcticicestudio/nord-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'gilgigilgil/anderson.vim'
"    Plug 'vim-vdebug/vdebug'
call plug#end()
set belloff=all

set tabstop=4 shiftwidth=2 expandtab

nnoremap <SPACE> <Nop>
let mapleader=" "

"let g:gruvbox_contrast_dark="hard"
"colorscheme gruvbox
colorscheme anderson
set bg=dark
syntax on
set number
set autoindent
set smartindent
set noswapfile

set mouse=a

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-q> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '~'


inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-x> :w<cr>
inoremap <C-z> <esc>:wq!<cr>               " save and exit
nnoremap <C-z> :wq!<cr>

nnoremap <C-t> :wa \| vertical botright term ++kill=term<CR>

"Ranger
let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>
