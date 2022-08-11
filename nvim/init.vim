call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" " Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'farmergreg/vim-lastplace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary' 
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfrg/vim-cpp-modern'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number relativenumber

set tabstop=2
set shiftwidth=3
set expandtab

set wrap

set mouse=a

syntax on

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <F2> :TagbarToggle<CR>
nnoremap <F3> :tabnew<CR>
" for this to work you have to install xsel and xclip
vmap <C-c> "+y

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = -1

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
set noshowmode

set background=dark
set t_CO=256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
colorscheme gruvbox
source $HOME/.config/nvim/plug-config/coc.vim

