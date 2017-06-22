" Syntax Highlighting

"Setting according to file type
filetype plugin indent on

if has("syntax")
    syntax on
endif

:colorscheme aldmeris

"indent
set autoindent
set cindent

"line number
set nu

"search option
set hlsearch
set ignorecase

"tab-space
set expandtab
set tabstop=4
set shiftwidth=4

"folding method
set foldmethod=syntax
set nofoldenable

"use bundle plugin
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Vundle install
Plugin 'gmarik/Vundle.vim'
"NERDTree, showing directory and navigation
Plugin 'The-NERD-Tree'
"source explorer, show definition below
Plugin 'Source-Explorer-srcexpl.vim' 
Plugin 'SrcExpl'
"taglist, show tags of Ctag, organized by item
Plugin 'taglist.vim'
"Autocomplete, pop up the autocomplete
Plugin 'AutoComplPop'
"snipMate, snippet
Plugin 'snipMate'

call vundle#end()

let NERDTreeWinPos = "left"

"NERDTree shortcut
nmap <F7> :NERDTree<CR>
"taglist shortcut
nmap <F8> :TlistToggle<CR>
"source explorer shortcut
nmap <F9> :SrcExplToggle<CR>

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

"go to definition
nmap <F3> <c-]>
"back to original location
nmap <F2> <c-t>
"diff this, Compare two splited windows
nmap <F4> :diffthis<CR><c-w><c-w>:diffthis<CR>
"splited window size adjustment
nmap <c-Up> <c-w>+
nmap <c-Down> <c-w>-
nmap <c-Left> <c-w><
nmap <c-Right> <c-w>>
"toggle folding
nmap <space> za
"Fold and unfold all once
nmap <F5> zMzR
