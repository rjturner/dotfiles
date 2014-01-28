" Ryan J. Turner
" .vimrc

""""""""""""
" Preamble "
""""""""""""

" Disable vi compatibility; must be set first
set nocompatible

" Load pathogen from bundle instead of autoload
runtime bundle/pathogen/autoload/pathogen.vim

" Initialize pathogen plugin manager
execute pathogen#infect() 

"""""""""""
" Options "
"""""""""""

" Tabs
set expandtab                   " Insert spaces instead of tabs
set tabstop=8                   " Keep real tabs at 8 spaces
set softtabstop=2               " Set smaller soft tabs
set shiftwidth=2                " Set smaller shift width

"""""""""""""
" Variables "
"""""""""""""

""""""""""""
" Commands "
""""""""""""

"""""""""""""
" Functions "
"""""""""""""

""""""""""""
" Mappings "
""""""""""""

""""""""""""""""
" Autocommands "
""""""""""""""""

"""""""""
" Local "
"""""""""

" Load .vimrc.local for machine-specific settings
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
