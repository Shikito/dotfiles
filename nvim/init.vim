set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set splitright
set clipboard=unnamed
set hls
"----- dein -------
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
call dein#install()
call map(dein#check_clean(), "delete(v:val, 'rf')")
endif
filetype plugin indent on
syntax enable
"----- the end of dein -------
"----- latex(vimtex) ---------
let g:vimtex_compiler_latexmk = {
      \ 'background': 1,
      \ 'build_dir': '',
      \ 'continuous': 1,
      \ 'options': [
      \    '-pdfdvi', 
      \    '-verbose',
      \    '-file-line-error',
      \    '-synctex=1',
      \    '-interaction=nonstopmode',
      \],
      \}

"let g:vimtex_view_general_viewer
"      \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
"----- the end of latex ------

"----- Japanese Input --------
"" Zenkaku Space
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
"----- the end of Japanese ---"
