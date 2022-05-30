" reset augroup
augroup MyAutoCmd
autocmd!
augroup END

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

set vb t_vb=
set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
filetype plugin indent on
inoremap jk <Esc>

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ ddc#map#pum_visible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

syntax enable
set background=dark  
set t_Co=256
