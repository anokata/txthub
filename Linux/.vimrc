
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'

call plug#end()

let mapleader=","
" ================ Persistent Undo ==================
if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

let NERDTreeIgnore = ['\.pyc$']
" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
"nnoremap <leader>b :BufExplorer<CR>
" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>


" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set wildmenu

filetype off
set nocp
"call pathogen#infect()
"call pathogen#helptags()

colorscheme pablo
filetype plugin indent on
syntax on
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
set guioptions -=T
"set hls
set nu
nmap <leader>t :tabnew<CR>
nmap <leader>w :tabclose<CR>
nmap <leader>, :tabnext<CR>
nmap <leader>. :tabprev<CR>

set expandtab
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
"map <C-F9> :!python3 <CR>
"map <F7> :!bash ./openlocal.sh<CR>
map <C-F9> :!python3 -i '%:t'<CR>
map <F10> :!make run<CR>
map <C-F10> :!make test<CR>
set autochdir
nmap <C-F5> :call MakeDefSession()<CR>
nmap <S-F5> :call LoadDefSession()<CR>

function! MakeDefSession()
  let b:filename = $HOME . "/.vim/sessions" . "/pythonDefSession.vim"
  exe "mksession! " . b:filename
endfunction
function! LoadDefSession()
  let b:filename = $HOME . "/.vim/sessions" . "/pythonDefSession.vim"
  exe 'source ' b:filename
endfunction

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
"nmap <F2> :NERDTree<CR>
"nmap <F3> :NERDTreeClose<CR>
nmap <Leader>u ysiw_ysiw_
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
