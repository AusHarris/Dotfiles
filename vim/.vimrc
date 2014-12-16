execute pathogen#infect()
syntax on
filetype plugin indent on
syntax on
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

for file in split(glob('~/dotfiles/vim/bundle/settings/*/*.vim'), '\n')
    execute 'source' file
endfor

set history=1000
set nocompatible
set laststatus=2
set encoding=utf8
set so=8
set history=700
set expandtab
set tabstop=4
set shiftwidth=4
set wildmenu
set number
set incsearch
set autoread
set nobackup
set hid
set ignorecase
set smartcase
set mat=2
set nowb
set noswapfile
set noerrorbells
set novisualbell
set tm=500
set ignorecase
set hlsearch 
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set autoindent
set smartindent
set wrap
set backspace=eol,start,indent
set lbr
set tw=500
set fillchars+=vert:\ 
"auto-save plugin config

let g:auto_save=1
let g:auto_save_in_insert_mode=1
"ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

let g:string = 'string'


nnoremap <Leader>p :call Toggle_php_html()<CR>
function! Toggle_php_html()
    if (&ft == 'php')
        execute 'set filetype=html'
    else
        execute 'set filetype=php'
    endif
endfunction



