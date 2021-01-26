source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/general/settings.vim

source $HOME/.config/nvim/general/functions.vim

source $HOME/.config/nvim/general/key-mappings.vim

source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/coc.vim

"===================figure out a better place for this=============
map <C-K> :py3f /usr/share/clang/clang-format-10/clang-format.py<cr>
imap <C-K> <c-o>:py3f /usr/share/clang/clang-format-10/clang-format.py<cr>

"function! Formatonsave()
"  let l:formatdiff = 1
"  py3f /usr/share/clang/clang-format-10/clang-format.py
"endfunction
"autocmd BufWritePre *.c,*.h,*.cc,*.cpp call Formatonsave()



