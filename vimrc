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

" R Options
let g:vimrplugin_insert_mode_cmds = 0 " Don't steal backslash
let g:vimrplugin_assign = 0           " Don't steal underscore
let vimrplugin_rnowebchunk = 0        " Don't steal greater-than
let vimrplugin_vsplit = 1             " Split vertically
let vimrplugin_rconsole_width = 80    " 80 columns wide

""""""""""""
" Commands "
""""""""""""
command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
        \ | diffthis | wincmd p | diffthis

"""""""""""""
" Functions "
"""""""""""""

""""""""""""
" Mappings "
""""""""""""

" Clear knitr cache
nmap <LocalLeader>kr :call g:SendCmdToR('rm(list=ls(all.names=TRUE)); unlink("cache/*")')<CR>

" Reformat paragraph
nnoremap Q gwap
vnoremap Q gw

" Y: yank to end of line
map Y y$

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
