" File: plugin/hatena.vim
" Author:       motemen <motemen@gmail.com>
" Version:      20070830

command! -nargs=? HatenaEdit
      \   call hatena#edit(<args>)

command! -nargs=? HatenaUpdate
      \   call hatena#update(<args>)

command! -nargs=? HatenaUpdateTrivial
      \   let b:hatena_trivial=1
      \ | call hatena#update(<args>)

command! -nargs=? -complete=customlist,hatena#enum_users HatenaUser
      \   if strlen(<q-args>)
      \ |   let g:hatena_user=<q-args>
      \ | else
      \ |   echo get(g:, 'hatena_user', '')
      \ | endif

if !get(g:, 'hatena_no_default_keymappings')
    silent! nnoremap <unique> <Leader>he :<C-u>HatenaEdit<CR>
endif
