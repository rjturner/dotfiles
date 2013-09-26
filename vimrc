" Ryan J. Turner
" .vimrc

" Bootstrapping

" Disable vi compatibility; must be set first
set nocompatible

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
