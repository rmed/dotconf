" Switch on syntax highlighting.
syntax on

set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
set nu!
set mouse=a

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Plugins
" Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
" do not open dir in new tab
" Plugin 'Nopik/vim-nerdtree-direnter'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'toupeira/vim-desertink'
" Plugin 'scrooloose/syntastic'
Plugin 'spolu/dwm.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'gcavallanti/vim-noscrollbar'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'groenewege/vim-less'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'reedes/vim-pencil'
" Plugin 'Shougo/neocomplete.vim'

call vundle#end()

filetype plugin indent on     " required!
filetype plugin on

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

syntax enable

colorscheme desertink
"set cursorline
"set cursorcolumn
set encoding=utf-8
set t_Co=256

" folding
" automatic folding based on indentation level
nnoremap <Space> za
set foldmethod=indent
set foldnestmax=2

" GUI
set go-=T
set go-=m
set go-=r
set go-=R
set go-=l
set go-=L

" vim-gitgutter
" After changing colorscheme...
" hi clear SignColumn
" In vim-airline, only display 'hunks' if the diff is non-zero
" let g:airline#extensions#hunk#non_zero_only = 1


" let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
    " let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
" let g:airline#extensions#tabline#enabled = 1

" syntastic
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_python_checkers = ['pyflakes']

" show indentation
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

set laststatus=2
set noshowmode

map <C-y> :NERDTreeToggle<CR>
map <C-x> <Plug>CommentaryLine
vmap <C-x> <Plug>Commentary

" tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-Right>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
map <C-w> :tabclose<CR>

" " neocomplete
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" " Plugin key-mappings
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
" " Recommended key-mappings.
" " " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"    return neocomplete#close_popup() . "\<CR>"
"    " For no inserting <CR> key.
"    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" endfunction
" " TAB completion
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
" " Omni completion
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" " Disable preview pormpt
" set completeopt-=preview

" lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" tmux compatibility
map <Esc>[B <Down>

if &term =~ '256color'
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
