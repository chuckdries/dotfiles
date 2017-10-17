""""""""""""""""""""""""""""""""""""
" Plugins and configuration
" ~~Skip to line 36 for preferences~~
" Scratch that, this is all out the window
" Refactor eventually...
""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
let g:user_emmet_install_global = 0 "turn emmet off by default
autocmd FileType html,css,vue EmmetInstall "turn it back on for HTML and CSS only

" load PowerLine
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
set laststatus=2
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" NerdTree configuration
map <C-p> :NERDTreeToggle<CR>

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

""""""""""""""""""""""""""""""""""""
" My Preferences
" Explained in detail when confused
" See https://dougblack.io/words/a-good-vimrc.html
""""""""""""""""""""""""""""""""""""
"" Basics
set clipboard=unnamed "Use system clipboard for yank
filetype plugin indent on "commenting, indenting, syntax, etc.
syntax enable "highlight syntax
set backspace=indent,eol,start "Allows you to backspace over characters you didn't insert in this insert

"" Indentation
set tabstop=4 " number of visual spaces per TAB
    " When Vim opens a file and reads a <TAB> character, it uses that many spaces to visually show the <TAB>.
    "test
set shiftwidth=4 "the size of an 'indent'. Used by the <, >, and = commands as well as autoindent
set softtabstop=4 "number of spaces in tab when editing
    " This value is the number of spaces that is inserted when you hit <TAB> and also the number of spaces that are removed when you backspace.
set expandtab "tab key inserts spaces instead of tab character
set smartindent "autoindent on new line
autocmd filetype make setlocal noexpandtab "use literal tab characters in makefiles


"" Numbering
set relativenumber "code line numbers
set number "best of both worlds

" Aesthetics
hi LineNr ctermfg=58 "fade away coloring of non-current line number

"" Etc Settings
" set showcmd "show last command in bottom bar
set cursorline "underlines the line the cursor is on
set wildmenu "visual autocomplete for command menu
set lazyredraw "performance helper!

"" Searching
set showmatch "highlight matching () or other block characters
set incsearch "search as characters are entered
"set hlsearch "highlight matches
"stop highlighting search on , <space>
"nnoremap <M-H> :nohlsearch<CR> 

" This stuff comes from plugins
" set splitbelow "?????
" set splitright "????? 

" move between splits with <C-directional>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

nnoremap <C-n> :call Num()<CR> 
"toggles between relative and absolute numbering
function! Num()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
        set number
    endif
endfunc

set mouse=a
