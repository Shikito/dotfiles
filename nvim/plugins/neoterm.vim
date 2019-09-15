"https://sy-base.com/myrobotics/vim/neovim-neoterm/"
nnoremap <c-t><c-t> :Ttoggle<CR>
tnoremap <c-t><c-t> <C-¥><C-n>:Ttoggle<CR>
nnoremap (keymapping) :T (command)<CR>
nnoremap (keymapping) :T (command)<CR><C-w>j
nnoremap @C :T cd %:h && cd ../build && cmake .. && make<CR><c-w>j
nnoremap <silent> @c :T roscd && catkin_make<CR><c-w>j
