" Pathogen load
filetype off
set nocp
call pathogen#infect()
call pathogen#helptags()

colorscheme desert
filetype plugin indent on
syntax on
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
set guioptions -=T
set hls
set nu
nmap ,t :tabnew<CR>
nmap ,w :tabclose<CR>
nmap ,, :tabnext<CR>
nmap ,. :tabprev<CR>

set noexpandtab
set tabstop=4
set shiftwidth=4
"imap :!setxkbmap us:!setxkbmap us,ru
"nmap :!setxkbmap us
"nmap :!setxkbmap us:!setxkbmap us,ru

" ## Edit .vimrc ##
map ,v :vsp $MYVIMRC<CR>
map ,V :source $MYVIMRC<CR>
autocmd! bufwritepost ~/.vimrc execute "normal! :source ~/.vimrc"


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

map ё `
map Ж :
map ш i
map о j
map л k
"map <F9> python3 expand('%:t')
map <F9> :!python3 '%:t'<CR>
map <F8> :!python3 <CR>

" Сохраняет сессии для каждого каталога
function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction
" А так же при закрытии открытии восстанавливает сессию
" Adding automatons for when entering or leaving Vim
if(argc() == 0)
  au VimEnter * nested :call LoadSession()
endif
au VimLeave * :call MakeSession()
" ---конец сессий---

"NERDTree
nmap <F2> :NERDTree<CR>
nmap <F3> :NERDTreeClose<CR>

