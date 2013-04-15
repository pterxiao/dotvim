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

set cursorline
set cursorcolumn

" Highlight columns above 80.
if v:version >= 703
  let &colorcolumn=join(range(81,999),",")
endif

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
" :E is no longer unique.
:command E Ex

" Match <> in html/erb files.
autocmd FileType *.html *.erb set matchpairs+=<:>

" Auto format in c files.
autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -A8jps8H

" Hotkey for Latex files.
autocmd BufNewFile,BufRead *.tex :nnoremap <leader>c :!pdflatex %; open %:r.pdf<CR>

:nmap <leader>p :set paste!<CR>
:nmap <leader>l :set list!<CR>
:nnoremap <leader>s :setlocal spell spelllang=en_us<CR>
:nnoremap <leader>w :set textwidth=80<CR>

let g:syntastic_c_checkers = ['make']

" Set up CtrlP
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" Mark trailing whitespace
match ErrorMsg '\s\+$'
nnoremap <Leader>k :%s/\s\+$//e<CR>
