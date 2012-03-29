set nocompatible
set noswapfile
set nobackup

filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.bundle/neobundle.vim/
  call neobundle#rc(expand('~/.bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'

filetype plugin indent on
