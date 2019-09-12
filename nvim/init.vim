set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set splitright
set clipboard=unnamed
set hls

"----- setup dein -------
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
call dein#install()
endif
filetype plugin indent on
syntax enable
"----- the end of dein setup --------