" Pathogen
execute pathogen#infect()
call pathogen#helptags() 	" Generate helptags for everything in 'runtimepath'
colorscheme icansee
" ### Sanity config (don't obliterate this)
set nocompatible
set encoding=utf-8
set hidden
set history=100
syntax on
set number
set shellpipe=2/dev/null> 	" Don't print distracting text during searches
set re=1 	        	" Use a non-broken regex engine

" ### General config
inoremap jk <ESC>
set laststatus=2 		" Always show status line
let mapleader="\<Space"		" Use default leader
" Load .vimrc with '\conf'
map <leader>conf :source ~/.vimrc<CR> 
set showcmd 			" Show incomplete cmds from bottom
set gcr=a:blinkon0		" Disable cursor blink
set splitright			" Open vertical split to the right
set splitbelow			" Open horizontal split to down
" Set shell to bash (fish and VIM don't play well together)
set shell=bash
filetype plugin indent on

" ### Mouse
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


" ### Search Settings
set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" ### Turn Off Swap Files

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" ### Indentation and Display
" We want to replace tabs with spaces and have 4 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set nowrap                      	" Don't wrap lines


" ### Folds

set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default



" ### Completion
set wildmode=list:longest
set wildmode=longest,list,full
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*

" ### Scrolling - Start scrolling when we're getting close to margins
set scrolloff=10
set sidescrolloff=15
set sidescroll=1

" ### Copy Paste improvements
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" =====================================================================
"                Plugin options
" =====================================================================

" ### NERDtree
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" ### Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
