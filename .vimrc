" filesave
set nocompatible
set noswapfile
set nobackup

"" NeoBundle Settings
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-ruby/vim-ruby'

filetype plugin indent on

" edit
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

"" colorschema
let g:molokai_original=1
syntax on
set t_Co=256

" Unite settings
"let g:unite_enable_start_insert=1
let g:unite_enable_split_vertically=1
let g:unite_winwidth=40
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

