call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'farmergreg/vim-lastplace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
set relativenumber
set tabstop=4
set wrap
set mouse=a
syntax on
set laststatus=2
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
set noshowmode

set background=dark
set t_CO=256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
colorscheme gruvbox
