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
Plug 'preservim/nerdcommenter'
"Plug 'vbe0201/vimdiscord'
"Plug 'anned20/vimsence'
"Plug 'hugolgst/vimsence'
" TODO: comment toggle (<leader>c<space>) doesn't work
Plug 'dense-analysis/ale'
Plug 'zivyangll/git-blame.vim'
Plug 'luochen1990/rainbow'
call plug#end()
filetype plugin indent on
let g:rainbow_active = 1

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
map <F12> <Plug>(coc-definition)
map <F2> <Plug>(coc-rename)
map <C-f> :RG<CR>
map <C-p> :Files<CR>
map <C-b> :NERDTreeToggle<CR>
map <C-_> <Plug>NERDCommenterToggle<CR>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
nmap <F8> <Plug>(ale_fix)

""" from coc readme
set updatetime=300
set cmdheight=2

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

""" end coc readme section

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

