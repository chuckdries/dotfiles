" set shell=sh

" plugins
execute pathogen#infect()
" pathogen plugins:
"  - easymotion
"  - nerdtree
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()
filetype plugin indent on

" settings
syntax on
set mouse=a
set number
set relativenumber
set clipboard=unnamed
set laststatus=2
set statusline=%F%m%r%h%w%=\ [%Y]\ [%{&ff}]\ [%04l,%04v]\ [%p%%]\ [%L]
colo desert
set tabstop=2 shiftwidth=2 expandtab

"key binds
nmap <F12> <Plug>(coc-definition)
map <C-o> :Files<CR>
map <C-p> :NERDTreeToggle<CR>
map <C-i> :RG<CR>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

