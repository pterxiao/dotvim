call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set tabstop=2
set ls=2
set shiftwidth=2
set expandtab
set number
set ruler 

autocmd BufRead,BufNewFile *.c,*.h set tabstop=8 shiftwidth=8

set autoindent
set smartindent

set hlsearch
set incsearch

" Solarized stuff.
syntax on
set background=dark
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" Arrow keys im command mode are bad.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" More efficient bracket creation.
inoremap {<CR> {<CR>}<Esc>O

" Fixes typos.
:command W w
:command X x
" :E is no longer unique.
:command E Ex

" Match <> in html/erb files.
autocmd FileType *.html *.erb set matchpairs+=<:>

" Wrap by default in txt and dox files.
autocmd FileType *.dox *.txt set wrap tw=80

" Auto format in c files.
autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -A8jps8H

:nmap <leader>p :set paste!<CR>
:nmap <leader>l :set list!<CR>
:nnoremap <leader>o :ls<cr>:b<space>
:nnoremap <leader>s :setlocal spell spelllang=en_us

let g:syntastic_c_checkers = ['make']
