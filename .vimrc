:imap jj <Esc>
set mouse=a
set noswapfile
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nvie/vim-flake8'

set clipboard=unnamed

set nu



" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" js spacing
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set expandtab |
    \ set shiftwidth=2

" pep 8 spacing (python)
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" avoid extra space
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf8 support
set encoding=utf-8


let python_highlight_all=1
syntax on

set background=dark

" hide pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" fix backspace
set bs=2

inoremap <D-s> <ESC>:w<CR>i  "insertmode
nnoremap <D-s> :w<CR>        "normalmode

" sort shortcut
vnoremap<Leader>s :sort<CR>

"syntax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" execute eslint with --fix flag
"let g:syntastic_javascript_eslint_args = ['--fix']

" enable autoread to reload any files from files when checktime is called and
" the file is changed
set autoread

" add an autocmd after vim started to execute checktime for *.js files on write
au VimEnter *.js au BufWritePost *.js checktime

" Enable VIM autocomple for html
