execute pathogen#infect()
filetype plugin indent on
syntax on

for file in split(glob('~/dotfiles/vim/bundle/settings/*/*.vim'), '\n')
    execute 'source' file
endfor


set background=dark
colorscheme solarized

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
"ultisnips settings
let g:auto_save=1
let g:auto_save_in_insert_mode=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

"lightline
let g:lightline = {
            \ 'colorscheme':'solarized',
            \}

"mappings
nmap <leader>c ;close<CR>
nnoremap <leader>e :vsplit ~/dotfiles/vim/.vimrc<CR>
nnoremap <leader>c :close<CR>

nnoremap <silent> <Leader>p :call Toggle_php_html()<CR>
function! Toggle_php_html()
    if (&ft == 'php')
        execute 'set filetype=html'
    else
        execute 'set filetype=php'
    endif
endfunction

nnoremap <silent><leader>b :call Reformat_On_Save()<CR>
function! Reformat_On_Save()

    "save current cursor postion
    let s:current_cursor_position = 

    "mark current position 
    let s:save_a_mark = getpos("'a'")

    "reformat code
    autocmd! BufWritePre *.py execute 'normal gg=G'
endfunction

" map leader to spacebar 
let g:mapleader="\<Space>"
let mapleader="\<Space>"

imap jk <Esc>
nnoremap ; :



augroup VIM    
autocmd! BufWritePost $MYVIMRC source $MYVIMRC
autocmd! BufWritePost *.vim source %
augroup END



