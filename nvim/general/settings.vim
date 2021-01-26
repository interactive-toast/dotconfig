set nocompatible
set background=dark
syntax on
"color desert
set hlsearch
set tabstop=4
set shiftwidth=4
set showmatch
set ruler
set viminfo+=n~/.config/nvim/viminfo
set ffs=dos,unix
set nowrap

"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v.', 100)

"set textwidth=80
set colorcolumn=81        " highlight 81st column
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

filetype on
filetype plugin on
filetype indent on

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set number
set relativenumber

"===============netrw magic===============
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_list_hide = '.*.\.swp$'
let g:netrw_chgwin = 1
let g:netrw_dirhistmax = 0
"===============netrw magic===============

set tabline=%!MyTabLine()
set foldmethod=marker
set foldmarker=/*,*/
set foldtext=NeatFoldText()
