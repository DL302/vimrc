set encoding=utf8

"make vim reload files that were changed externally
set autoread

"theme 
color default
set background=light

"enable filetype plugins
filetype plugin on
filetype indent on

"set 7 lines to cursor when moving vertically
set so=7

"make <C-BS> delete whole words in insert mode [seems to only work in gvim]
imap <C-BS> <C-W>

"wildmenu autocompletion
set wildmenu

"start gvim maximized
au GUIEnter * simalt ~x

"syntax
syntax on

"hybrid numbers
set nu rnu

"ruler
set ruler

"use system clipboard
set clipboard=unnamed

"gui options
if has("gui_running")
    set guioptions-=T "remove toolbar
    set guioptions-=e
    set guioptions-=r "remove right scroll bar
    set guioptions-=L "remove left scroll bar
    set t_Co=256
    set guitablabel=%M\ %t
    if has("gui_gtk2")
        set guifont=Inconsolata\ 17
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h17
    elseif has("gui_win32")
        set guifont=Consolas:h17:cANSI
    endif
endif

"set where to store swap [.swp], undo[]idk and backup [.un~] files
set directory=C:\vimbackups\\
set undodir=C:\vimbackups\\
set undofile
set backupdir=C:\vimbackups\\

"make backspace act like it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"show matching brackets
set showmatch

"spaces instead of tabs
set expandtab

set smarttab

"1tab==4spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

"set auto & smart indent
set ai
set si

"highlight search results
set hlsearch

"make search act like browser <C-f>
set incsearch

"ignore case when searching
set ignorecase

"set statusline
set laststatus=2
 
"vim autocomplete, triggered by <C-x> <C-o>, navigable by <C-n> and <C-p>
set omnifunc=syntaxcomplete#Complete
