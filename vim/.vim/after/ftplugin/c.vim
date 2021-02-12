" File ~/.vim/ftplugin/c.vim
" C specific settings

setlocal expandtab
setlocal shiftwidth=8
setlocal tabstop=8

"setlocal cinkeys    " which keys trigger reindenting in insert mode
"setlocal cinoptions " options for preferred indent style
"setlocal cinwords   " keywords that start an extra indent on the next line

" turn off C highlighting of numbers and strings in comments
if exists("c_comment_strings")
  unlet c_comment_strings
endif
