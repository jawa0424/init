" filesave
set nocompatible
set laststatus=2
set noswapfile
set nobackup

"" NeoBundle Settings
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Lokaltog/vim-powerline'

filetype plugin indent on

" edit
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set ambiwidth=double
set encoding=utf-8
set fileencodings=ucs-bom,utf-,8iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
set backspace=indent,start,eol

"" colorscheme
set t_Co=256
syntax on
let g:molokai_original=1
colorscheme molokai

" Unite settings
"let g:unite_enable_start_insert=1
let g:unite_enable_split_vertically=1
let g:unite_winwidth=40
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q


" xxd mode settings
augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END
