" general stuff
syntax on
syntax enable

set tabstop=4
set shiftwidth=4
set expandtab

set nu! " line numbers
set mouse=a

set nocompatible
filetype off
filetype plugin indent on     " required!
filetype plugin on

"set cursorline
"set cursorcolumn
set encoding=utf-8
set t_Co=256

set laststatus=2
set noshowmode

" set colorcolumn=80

" tab navigation
map [1;5D <C-Left>
map [1;5C <C-Right>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-Right>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
map <C-w> :tabclose<CR>

" Wrapped line navigation
nnoremap k gk
nnoremap j gj

" GUI
set go-=T
set go-=m
set go-=r
set go-=R
set go-=l
set go-=L


" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'

" do not open dir in new tab
" Plugin 'Nopik/vim-nerdtree-direnter'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ervandew/supertab'

Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'spolu/dwm.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'

" Plugin 'gcavallanti/vim-noscrollbar'

Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'groenewege/vim-less'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-markdown'
Plugin 'reedes/vim-pencil'
Plugin 'davidhalter/jedi-vim'

" Plugin 'Shougo/neocomplete.vim'

call vundle#end()

" vim-colorschemes
colorscheme desertink
" colorscheme flattown

" Vim-latexsuite
" set grepprg=grep\ -nH\ $*
" let g:tex_flavor='latex'

" vim-pencil
" augroup pencil
"     autocmd!
"     autocmd FileType markdown,mkd call pencil#init()
"     autocmd FileType text call pencil#init()
" augroup END
let g:pencil#textwidth = 79
let g:airline_section_x = '%{PencilMode()}'

" syntastic
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_python_checkers = ['pyflakes']

" indentLine (show indentation)
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

" NERDTree
map <C-y> :NERDTreeToggle<CR>

" Commentary
map <C-x> <Plug>CommentaryLine
vmap <C-x> <Plug>Commentary

" lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" tmux compatibility
map <Esc>[B <Down>

if &term =~ '256color'
" if &term =~ '^screen'
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
