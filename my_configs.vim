set number
set nofullscreen

let g:NERDTreeWinPos = "left"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

set lines=999 columns=9999

function! s:goyo_enter()
    set guifont=Inconsolata-dz\ for\ Powerline:h22
    set lines=999 columns=9999
endfunction

function! s:goyo_leave()
    set guifont=Inconsolata-dz\ for\ Powerline:h14
    set lines=999 columns=9999
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul


unmap <space>
nmap <space> <leader>
set clipboard=unnamed

