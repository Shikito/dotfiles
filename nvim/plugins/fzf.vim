" https://qiita.com/Sa2Knight/items/6635af9fc648a5431685
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
nnoremap <silent> ,f :GFiles<CR>
nnoremap <silent> ,F :GFiles?<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,l :BLines<CR>
nnoremap <silent> ,h :History<CR>
nnoremap <silent> ,m :Mark<CR>
