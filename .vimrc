execute pathogen#infect()

syntax on                                                                                                                                                                                                                                    filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set nu

set runtimepath^=~/.vim/bundle/ctrlp.vim

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

set rtp+=~/.fzf

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" " - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'
autocmd BufWritePre *.h %s/ $//g
autocmd BufWritePre *.hpp %s/ $//g
autocmd BufWritePre *.cpp %s/ $//g

map <C-K> :py3f ~/clang-format.py<cr>
imap <C-K> <c-o>:py3f ~/clang-format.py<cr>

"Omnicppplugin settings
set nocp
filetype plugin on
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
