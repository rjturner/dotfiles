" Ryan J. Turner
" .vimrc

" Bootstrapping

" Disable vi compatibility; must be set first
set nocompatible

" Load pathogen from bundle instead of autoload
runtime bundle/pathogen/autoload/pathogen.vim

" Initialize pathogen plugin manager
execute pathogen#infect() 

" Load .vimrc.local for machine-specific settings
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
