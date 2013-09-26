" Ryan J. Turner
" .vimrc

" Bootstrapping

" Disable vi compatibility; must be set first
set nocompatible

" Load .vimrc.local for machine-specific settings
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
